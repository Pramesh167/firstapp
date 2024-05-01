import 'package:firstapp/common_widget/listtile_widget.dart';
import 'package:firstapp/screen/area_of_circle.dart';
import 'package:firstapp/screen/arithmetic_screen.dart';
import 'package:firstapp/screen/customer_widget_screen.dart';
import 'package:firstapp/screen/flexible_expanded_screen.dart';
import 'package:firstapp/screen/flutter_layout_screen.dart';
import 'package:firstapp/screen/list_tile_screen.dart';
import 'package:firstapp/screen/star_screen.dart';
import 'package:firstapp/screen/student_detail_screen.dart';
// import 'package:firstapp/screen/hello_world_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StudentDetailsScreen(),
    );
  }
}
