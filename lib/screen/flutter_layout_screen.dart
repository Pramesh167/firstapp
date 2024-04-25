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
        color: Color.fromARGB(255, 255, 255, 255),
        
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                Text('Call',selectionColor: Colors.amber,),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route, color: Colors.grey),
                Text('Route',selectionColor: Colors.amber,),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share, color: Colors.grey),
                Text('Share',selectionColor: Colors.amber,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
