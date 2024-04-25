import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stars"),
      ),
      body: Container(
        color: Colors.amber,
        height: 800,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.star),
            Spacer(),
            Icon(Icons.star),
            Icon(Icons.star),
            // Column(
            //   children: [Icon(Icons.star), Icon(Icons.star)],
            // )
          ],
        ),
      ),
    );
  }
}
