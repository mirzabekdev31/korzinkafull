part of 'splash_bloc.dart';

@immutable
class SplashState {
  final Status status;
  const SplashState({
    this.status = Status.success,
  });

  SplashState copyWith({
    Status? status,

  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }
}

enum Status { success}