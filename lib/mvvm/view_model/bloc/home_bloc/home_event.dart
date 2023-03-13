part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeInitEvent extends HomeEvent{

}

class HomeSearchEvent extends HomeEvent{String text;HomeSearchEvent(this.text);}

class HomeNextEvent extends HomeEvent{}