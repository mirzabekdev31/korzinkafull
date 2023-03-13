import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'pin_code_event.dart';
part 'pin_code_state.dart';

class PinCodeBloc extends Bloc<PinCodeEvent, PinCodeState> {
  PinCodeBloc() : super(PinCodeInitial()) {
    on<PinCodeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
