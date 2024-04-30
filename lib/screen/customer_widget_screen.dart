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

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    first = int.parse(value);
                  });
                },
                text: 'Enter First No',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    second = int.parse(value);
                  });
                },
                text: 'Enter second No',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: MyButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int result = first! + second!;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Sum is $result'),
                        ),
                      );
                    }
                  },
                  text: 'ADD',
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: MyButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int result = first! * second!;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Multiplication is $result'),
                        ),
                      );
                    }
                  },
                  text: 'Multiply',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
