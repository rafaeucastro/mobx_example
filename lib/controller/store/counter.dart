import 'package:mobx/mobx.dart';

part 'counter.g.dart';

class Counter = CounterBase with _$Counter;

abstract class CounterBase with Store {
  @observable
  int _counter = 0;

  @computed
  int get value => _counter;

  @action
  void increment() {
    _counter++;
  }

  @computed
  int get counterPlusTen => _counter + 10;
}
