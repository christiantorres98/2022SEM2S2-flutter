import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

import '../models/button.model.dart';
import '../widgets/buttonsrow.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String textResults = "0";
  String textOperations = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              //height: 100,
              color: Colors.amber,
              child: Row(
                children: [
                  Text(textOperations),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.blueAccent,
            child: Row(
              children: [
                Text(textResults),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              height: 100,
              color: Colors.indigo,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buttonsRow([
                    ButtonModel(
                        title: "+/-",
                        method: () {
                          print("%");
                        }),
                    ButtonModel(
                        title: "0",
                        method: () {
                          print("CR");
                        }),
                    ButtonModel(
                        title: ",",
                        method: () {
                          print("C");
                        }),
                    ButtonModel(
                        title: "=",
                        method: () {
                          setState(() {
                            textResults = "${textOperations.interpret()}";
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "%",
                        method: () {
                          setState(() {
                            textOperations += "%";
                          });
                        }),
                    ButtonModel(
                        title: "CE",
                        method: () {
                          setState(() {
                            textOperations += "CE";
                          });
                        }),
                    ButtonModel(
                        title: "C",
                        method: () {
                          setState(() {
                            textOperations += "C";
                          });
                        }),
                    ButtonModel(
                        title: "<--",
                        method: () {
                          setState(() {
                            textOperations += "<--";
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "1/x",
                        method: () {
                          setState(() {
                            textOperations += "1/x";
                          });
                        }),
                    ButtonModel(
                        title: "x2",
                        method: () {
                          setState(() {
                            textOperations += "^";
                          });
                        }),
                    ButtonModel(
                        title: "√",
                        method: () {
                          setState(() {
                            textOperations += "√";
                          });
                        }),
                    ButtonModel(
                        title: "/",
                        method: () {
                          setState(() {
                            textOperations += "/";
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "7",
                        method: () {
                          setState(() {
                            textOperations += "7";
                          });
                        }),
                    ButtonModel(
                        title: "8",
                        method: () {
                          setState(() {
                            textOperations += "8";
                          });
                        }),
                    ButtonModel(
                        title: "9",
                        method: () {
                          setState(() {
                            textOperations += "9";
                          });
                        }),
                    ButtonModel(
                        title: "x",
                        method: () {
                          setState(() {
                            textOperations += "*";
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "4",
                        method: () {
                          setState(() {
                            textOperations += "4";
                          });
                        }),
                    ButtonModel(
                        title: "5",
                        method: () {
                          setState(() {
                            textOperations += "5";
                          });
                        }),
                    ButtonModel(
                        title: "6",
                        method: () {
                          setState(() {
                            textOperations += "6";
                          });
                        }),
                    ButtonModel(
                        title: "-",
                        method: () {
                          setState(() {
                            textOperations += "-";
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "1",
                        method: () {
                          setState(() {
                            textOperations += "1";
                          });
                        }),
                    ButtonModel(
                        title: "2",
                        method: () {
                          setState(() {
                            textOperations += "2";
                          });
                        }),
                    ButtonModel(
                        title: "3",
                        method: () {
                          setState(() {
                            textOperations += "3";
                          });
                        }),
                    ButtonModel(
                        title: "+",
                        method: () {
                          setState(() {
                            textOperations += "+";
                          });
                        }),
                  ]),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
