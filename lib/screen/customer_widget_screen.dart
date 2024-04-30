import 'package:firstapp/common_widget/my_button.dart';
import 'package:firstapp/common_widget/my_textformfield.dart';
import 'package:flutter/material.dart';

class CustomerWidgetScreen extends StatefulWidget {
  const CustomerWidgetScreen({super.key});

  @override
  State<CustomerWidgetScreen> createState() => _CustomerWidgetScreenState();
}

class _CustomerWidgetScreenState extends State<CustomerWidgetScreen> {
  int? first;
  int? second;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Customer Widget Screen",
            style: TextStyle(fontSize: 30),
          ),
        ),
        body: Column(
          children: [
            MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    first = int.parse(value);
                  });
                },
                text: 'Enter your Name'),
            MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    second = int.parse(value);
                  });
                },
                text: 'formfield2'),
            MyButton(onPressed: () {}, text: 'CLICKER'),
          ],
        ));
  }
}
