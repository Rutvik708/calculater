import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

//ligui


    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        controller: value.t1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter Number"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        controller: value.t2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text("Enter Number"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(children: [
                        ElevatedButton(
                            onPressed: () {
                              //String first = t1.text;
                              //t2.text = first;
                              sum.value();
                            },
                            child: Text("+")),
                        ElevatedButton(
                            onPressed: () {
                              // String first = t1.text;
                              //t2.text = first;
                              sub.value();
                            },
                            child: Text("-")),
                        ElevatedButton(
                            onPressed: () {

                              mul.value();
                            },
                            child: Text("x")),
                        ElevatedButton(
                            onPressed: () {

                              div.value();
                            },
                            child: Text("/")),
                        ElevatedButton(
                            onPressed: () {

                              per.value();
                            },
                            child: Text("%")),
                      ]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Result:",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "${Submit.value}",
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    )
                  ]);
            },
          )),
    );
  }
}

class Model extends ValueNotifier {
  //int cnt= 0;

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  ValueNotifier Submit = ValueNotifier("");

  void sum() {
    Submit = double.parse(t1.text) + double.parse(t2.text);
    ValueListenableBuilder(valueListenable: Submit, builder: (context, value, child) {
      return Text("$value");
  }

  void sub()
  {
    Submit = double.parse(t1.text) - double.parse(t2.text);
    ValueListenableBuilder(valueListenable: Submit, builder: (context, value, child) {
      return Text("$value");
  }

  void mul()
  {
    Submit = double.parse(t1.text) * double.parse(t2.text);
    ValueListenableBuilder(valueListenable: Submit, builder: (context, value, child) {
      return Text("$value");
  }

  void div()
  {
    Submit  = double.parse(t1.text) / double.parse(t2.text);
    ValueListenableBuilder(valueListenable: Submit, builder: (context, value, child) {
      return Text("$value");
  }

  void per()
  {
    Submit  = double.parse(t1.text) % double.parse(t2.text);
    ValueListenableBuilder(valueListenable: Submit, builder: (context, value, child) {
      return Text("$value");
    },)
  }



}