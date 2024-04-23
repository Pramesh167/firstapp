import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASdasd'),
      ),
      body: Container(
        color: Color.fromARGB(255, 93, 119, 161),
        height: 50,
        
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.phone),
                Text('Call'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                Text('Route'),
                
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text('Share'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}