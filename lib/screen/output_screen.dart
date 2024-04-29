import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  // const OutputScreen({super.key});
  final int title;
  const OutputScreen({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Your data $title'),
      ),
    );
  }
}
