import 'package:bloc/bloc.dart';
import 'package:korzinkafull/mvvm/model/core/data/models/korzinka_model.dart';
import 'package:meta/meta.dart';

import '../../../model/core/api/korzinka_api.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final KorzinkaApi _api;

  HomeBloc(this._api) : super(const HomeState()) {
    on<HomeInitEvent>((event, emit) async {
      emit(state.copyWith(status: Status.loading, offset: 0, hasData: true));
      try {
        emit(state.copyWith(
          status: Status.success,
          products: await _api.getKorzinka(offset: state.offset, limit: state.limit),
        ));
      } catch (e) {}
    });
    on<HomeNextEvent>((event, emit) async {
      if (!state.enabled) return;
      emit(state.copyWith(
        status: Status.loading,
        offset: state.offset + state.limit,
      ));
      try {
        final products = await _api.getKorzinka(
          offset: state.offset,
          limit: state.limit,
        );
        emit(state.copyWith(
            status: Status.success,
            hasData: products.isNotEmpty,
            products: [...state.products, ...products]));
      } catch (e) {}
    });
    on<HomeSearchEvent>((event, emit) async {
      emit(state.copyWith(
        status: Status.success,
        search: event.text,
        products: [],
        offset: 0,
      ));
      try {
        final model = await _api.getKorzinka(search: state.search);
        emit(state.copyWith(
            status: Status.success,
            products: model,
            offset: state.offset,
            limit: state.limit));
      } catch (e) {}
    });
  }
}
