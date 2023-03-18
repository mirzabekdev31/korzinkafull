part of 'home_bloc.dart';

@immutable
class HomeState {
  final Status status;
  final String message;
  final List<ListElement> products;
  final bool enabled;
  final int offset;
  final int limit;
  final String search;

  const HomeState({
    this.status = Status.initial,
    this.message = "",
    this.products = const[],
    this.enabled = true,
    this.offset = 0,
    this.limit = 10,
    this.search="",
  });

  HomeState copyWith({
    Status? status,
    String? message,
    List<ListElement> ? products,
    bool? hasData,
    int? offset,
    int? limit,
    String? search,
  }) {
    return HomeState(
        status: status ?? this.status,
        message: message ?? this.message,
        products: products ?? this.products,
        enabled: hasData ?? this.enabled,
        offset: offset ?? this.offset,
        limit: limit ?? this.limit,
        search: search ?? this.search
    );
  }

}



enum Status { initial, loading, fail, success }