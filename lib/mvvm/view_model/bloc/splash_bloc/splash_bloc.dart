
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState()) {
    on<SplashGetLastEvent>((event, emit) {
      emit(state.copyWith(status:Status.success));
    });
  }
}
