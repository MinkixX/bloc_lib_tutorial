class CounterState {
    int counter;

    CounterState._();

    factory CounterState.initial() {
        return CounterState._()..counter = 0;
    }

    factory CounterState.updated(int counter) {
        return CounterState._()..counter = counter;
    }
}