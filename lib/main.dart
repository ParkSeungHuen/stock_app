import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:stock_app/data/repository/stock_repository_impl.dart';
import 'package:stock_app/data/source/local/company_listing_entity.dart';
import 'package:stock_app/data/source/local/stock_dao.dart';
import 'package:stock_app/data/source/remote/stock_api.dart';
import 'package:stock_app/domain/repository/stock_repository.dart';
import 'package:stock_app/presentation/company_listings/company_listings_screen.dart';
import 'package:stock_app/presentation/company_listings/company_listings_view_model.dart';
import 'package:stock_app/util/color_schemes.dart';
import 'package:hive_flutter/hive_flutter.dart'; // Hive.initFlutter를 사용하기 위해 import, hive.hive 포함되어있음

void main() async {
  await Hive.initFlutter(); // hive 사용하기 위해
  Hive.registerAdapter(CompanyListingEntityAdapter()); // Hive Entity 작성 후 generate 하면 Adapter가 추가되고, 이를 메인에서 추가해주어야 한다

  final repository = StockRepositoryImpl(StockDao(), StockApi());
  GetIt.instance.registerSingleton<StockRepository>(repository); // 어디든지 갖다 쓸 수 있음

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CompanyListingsViewModel(
          repository,
          // StockRepositoryImpl(
          //   StockDao(),
          //   StockApi(),
          // ),
          ),
        )
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const CompanyListingsScreen(),
    );
  }
}
