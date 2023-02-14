import 'package:flutter/material.dart';
//import 'package:mobx_example/model/app_theme.dart';
import 'package:mobx_example/view/home.dart';
import 'model/inherited_state.dart';

part 'model/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme,
        home: const MyHomePage(title: 'MobX Example'),
      ),
    );
  }
}
