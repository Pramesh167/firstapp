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
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              width: double.infinity,
              // height: 200,
              color: const Color.fromARGB(255, 225, 96, 87),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: Container(
              width: double.infinity,
              // height: 200,
              color: const Color.fromARGB(255, 70, 70, 70),
            ),
          )
        ],
      ),
    );
  }
}
