import 'package:equatable/equatable.dart';

class NaverBookSearchOption extends Equatable {
  final String? query;
  final int? display;
  final int? start;
  final NaverBookSearchType? sort;

  const NaverBookSearchOption({
    this.query,
    this.display,
    this.start,
    this.sort,
  });

  @override
  List<Object?> get props => [query, display, start, sort];
}

enum NaverBookSearchType {
  date('출간일순', 'data'),
  sim('정확도순', 'sim');

  const NaverBookSearchType(this.name, this.value);
  final String name;
  final String value;
}
