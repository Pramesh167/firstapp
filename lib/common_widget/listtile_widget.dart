import 'package:firstapp/screen/output_screen.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.accessible_forward_rounded),
      title: Text('Pramesh $index'),
      subtitle: const Text("Balaju-16"),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OutputScreen(title: index);
        }));
      },
    );
  }
}
