import 'package:firstapp/common_widget/my_button.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreem extends StatelessWidget {
  const FlexibleExpandedScreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("flexible expanded screen"),
      ),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              width: double.infinity,
              // height: 200,
              color: const Color.fromARGB(255, 225, 96, 87),
              child: Center(
                  child: MyButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("Nahi dabana tha"),
                          duration: Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      text: 'Button1')),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              // height: 200,
              color: const Color.fromARGB(255, 70, 70, 70),
              child: Center(
                  child: MyButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text("Fir nahi dabana tha"),
                          duration: Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      text: 'Button 2')),
            ),
          )
        ],
      ),
    );
  }
}
