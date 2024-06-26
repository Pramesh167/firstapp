import 'package:firstapp/common_widget/listtile_widget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Tile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 100; i++) ...{
              if (i % 2 == 0) ...{
                ListTileWidget(index:i,
                imageName:'image_2.jpg'),
              }else...{
              ListTileWidget(index: i,
              imageName:'image_1.jpg')
              }
            }
          ],
        ),
      ),
    );
  }

}
