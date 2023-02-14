import 'package:flutter/material.dart';
import '../controller/store/counter.dart';

class CounterProvider extends InheritedWidget {
  final counter = Counter();

  CounterProvider({super.key, required super.child});

  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
