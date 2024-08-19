import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  //Logic

  int counter = 0;
  void increment() {
    counter++;

    emit(CounterIncrementSucces(counter));
  }

  void success() {
    emit(Success());
  }

  void fail() {}
  void loading() {}
// function
}
