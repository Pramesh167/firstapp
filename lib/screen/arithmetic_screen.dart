import 'package:firstapp/model/arithmetic_model.dart';
import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int? first;
  int? second;
  int result = 0;
  ArithmeticModel? arithmeticModel;

  //global key for form
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Addition operation',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              RadioListTile(
              
                value: 'Add',
                 groupValue: 'Add',
                  onChanged: (value){
            setState(() {
                
            });
          },
          ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  first = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your frist number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter first number";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  second = int.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your second number',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter second number";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      arithmeticModel = ArithmeticModel(
                        first: first!,
                        second: second!,
                      );
                      result = arithmeticModel!.add();
                    });
                  }
                },
                child: const Text('Add'),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Sum is : $result',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
