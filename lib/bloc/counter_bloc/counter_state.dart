abstract class CounterState{

}

class CounterInitPrimaryState extends CounterState {
  int counter ;
  CounterInitPrimaryState(this.counter);
}

class CounterUpdated extends CounterState{
  int counter ;
  CounterUpdated(this.counter);
}