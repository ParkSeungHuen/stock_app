import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../../domain/model/intraday_info.dart';

class StockChart extends StatelessWidget {
  final List<IntradayInfo> infos;
  final Color graphColor;
  final Color textColor;

  const StockChart({Key? key, this.infos = const [], required this.graphColor, required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: CustomPaint(
        painter: ChartPainter(infos, graphColor, textColor), // 화면에 띄우려면 아래 클래스를 ...
      ),
    );
  }
}

class ChartPainter extends CustomPainter {
  final List<IntradayInfo> infos;
  final Color graphColor;
  final Color textColor;

  late int upperValue = infos.map((e) => e.close)
      .fold<double>(0.0, (previousValue, element) => max(previousValue, element)).ceil(); // close 값을 map으로 거른 후 이전값과 비교하여 max
  late int lowerValue = infos.map((e) => e.close)
      .reduce((value, element) => min(value, element)).toInt(); // reduce는 초깃값 필요 x

  final spacing = 50.0;

  late Paint strokePaint;

  ChartPainter(this.infos, this.graphColor, this.textColor) {
    strokePaint = Paint()..color = graphColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final priceStep = (upperValue - lowerValue) / 5.0;
    for (var i = 0; i < 5; i++) {

      final tp = TextPainter( // 위치 잡기
        text: TextSpan(
          text: '${(lowerValue + priceStep * i).round()}', // 가장 낮은 구간에서 priceStep을 계속 더해서 그리기
          style: TextStyle(fontSize: 12, color: textColor),
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr, // 왼
      );
      tp.layout();
      tp.paint(canvas, Offset(10, size.height - spacing - i * (size.height / 5.0)));
    }

    final spacePerHour = (size.width - spacing) / infos.length;
    for (var i = 0; i < infos.length; i += 12) {
      final hour = infos[i].date.hour;

      final tp = TextPainter(
        text: TextSpan(
            text: '$hour',
            style: TextStyle(fontSize: 12, color: textColor)
        ),
        textAlign: TextAlign.start,
        textDirection: TextDirection.ltr, // 왼
      );

      tp.layout();
      tp.paint(canvas, Offset(i * spacePerHour + spacing, size.height + 5));
    }

    var lastX = 0.0; // 마지막 x값
    final strokePath = Path();
    for (var i = 0; i < infos.length; i++) {
      final info = infos[i];
      var nextIndex = i + 1;
      if (i + 1 > infos.length - 1) nextIndex = infos.length - 1;
      final nextInfo = infos[nextIndex];
      final leftRatio = (info.close - lowerValue) / (upperValue - lowerValue); // 비율
      final rightRatio = (nextInfo.close - lowerValue) / (upperValue - lowerValue); // 비율
      final x1 = spacing + i * spacePerHour; // 왼쪽 점의 x좌표
      final y1 = size.height - (leftRatio * size.height).toDouble(); // 왼쪽 점의 y좌표
      final x2 = spacing + (i + 1) * spacePerHour; // 왼쪽 점의 x좌표
      final y2 = size.height - (rightRatio * size.height).toDouble(); // 왼쪽 점의 y좌표
      if (i == 0) {
        strokePath.moveTo(x1, y1);
      }
      lastX = (x1 + x2) / 2.0;
      strokePath.quadraticBezierTo(x1, y1, lastX, (y1 + y2) / 2.0);
    }

    final fillPath = Path.from(strokePath)..lineTo(lastX, size.height - spacing)..lineTo(spacing, size.height - spacing)..close();

    final fillPaint = Paint()..color = graphColor
    ..style = PaintingStyle.fill
    ..shader = ui.Gradient.linear(
        Offset.zero,
        Offset(0, size.height - spacing),
        [
          graphColor.withOpacity(0.5), // 50% 투명
          Colors.transparent
        ]
    );

    canvas.drawPath(fillPath, fillPaint);
    canvas.drawPath(strokePath, strokePaint);

  }

  @override
  bool shouldRepaint(ChartPainter oldDelegate) { // 언제 다시 그릴건지
    return oldDelegate.infos != infos; // 정보가 다르면 repaint
  }

}
