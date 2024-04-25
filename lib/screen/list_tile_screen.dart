import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Tile"),
        ),
        body: Column(
          children: [
            for (int i = 0; i < 1000; i++)
            ListTile(
              leading: const Icon(Icons.accessible_forward),
              title: const Text("Pramesh Pathak"),
              subtitle: const Text("Balaju-16"),
              trailing: const Icon(Icons.delete),
              onTap: () {
                debugPrint('ListTile Tapped');
              },
            ),
          ],
        ));
  }
}




