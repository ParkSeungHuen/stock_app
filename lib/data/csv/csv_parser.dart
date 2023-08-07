abstract class CsvParser<T> { // 인터페이스
  Future<List<T>> parse(String csvString);
}