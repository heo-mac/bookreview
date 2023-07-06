import 'package:dio/dio.dart';

class NaverBookRepository {
  final Dio _dio;
  NaverBookRepository(this._dio);

  void searchBooks() async {
    // search book 뒷부분
    var response = await _dio.get('v1/search/book.json', queryParameters: {
      //params의 값
      'query': "",
      'displey': 10,
      'start': 1,
      'sort': 'date',
    });

    print(response);
  }
}
