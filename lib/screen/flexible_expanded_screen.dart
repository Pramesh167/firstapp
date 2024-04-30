import 'package:flutter/material.dart';

class FlexibleExpandedScreem extends StatelessWidget {
  const FlexibleExpandedScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flexible expanded screen"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            color: Colors.red,
          ),
          Flexible(
            child: Container(
              width: double.infinity,
              color: Colors.amber,
            ),
          )
        ],
      ),
    );
  }
}
