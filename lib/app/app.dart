import 'package:firstapp/screen/arithmetic_screen.dart';
// import 'package:firstapp/screen/hello_world_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ArithmeticScreen(),
    );
  }
}
