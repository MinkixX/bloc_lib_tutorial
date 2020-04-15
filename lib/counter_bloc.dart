import 'package:bloc/bloc.dart';
import 'package:bloctutorial/counter_event.dart';
import 'package:bloctutorial/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;

  void onIncrement(){
    counter++;
    this.add(IncrementEvent());
  }

  void onDecrement(){
    counter--;
    this.add(DecrementEvent());
  }

  @override
  CounterState get initialState => CounterState.initial();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if(event is IncrementEvent){
      yield CounterState.updated(counter);
    }
    else if(event is DecrementEvent){
      yield CounterState.updated(counter);
    }
  }
}