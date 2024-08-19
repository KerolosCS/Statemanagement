part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterIncrementSucces extends CounterState {
  final int counter;

  CounterIncrementSucces(this.counter);
}


final class Success extends CounterState {}

