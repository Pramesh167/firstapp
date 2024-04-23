import 'package:firstapp/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

final formKey = GlobalKey<FormState>();

class _AreaOfCircleState extends State<AreaOfCircle> {
  double? radius;
  double? result = 0;
  AeraOfCircleModel? aeraOfCircleModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(101, 0, 0, 0),
        title: const Text(
          "Area of Circle",
          style: TextStyle(
            fontSize: 30,
            backgroundColor: Colors.red,
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
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  radius = double.parse(value);
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)),
                  hintText: 'Enter your radius',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter the radius";
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
                      aeraOfCircleModel = AeraOfCircleModel(
                        radius: radius!,
                      );
                      result = aeraOfCircleModel!.areaCircle();
                    });
                  }
                },
                child: const Text("Find"),
              ),
              const SizedBox(
                height: 8,
              ),
              RichText(
                  text: TextSpan(children: <TextSpan>[
                const TextSpan(
                  text: 'A',
                  style: TextStyle(
                    backgroundColor: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                TextSpan(
                    text: 'rea of the circle is: $result',
                    style: const TextStyle(
                      backgroundColor: Colors.amber,
                      color: Colors.black,
                      fontSize: 30,
                    ))
              ]))

              // Text(
              //   'Area of Circle is :$result',
              //   style: const TextStyle(
              //     fontSize: 30,
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
