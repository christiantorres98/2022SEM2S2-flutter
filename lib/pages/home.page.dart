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
  String normalized = "";
  String aux = "";

  void number(String value){
    aux += value;
    print("aux: ${aux}");
  }

  void symbol(String value, String norm, int type){
    if (aux == ""){
      print("Error");                        
    }
    else {
      textOperations += aux;
      textOperations += value;

      if(type == 1){
        String norm_aux = norm + "(" + aux + ")";
        normalized += norm_aux;
      }
      if (type == 3){
        String norm_aux = norm + "(" + aux + ", 2)";
        normalized += norm_aux;
      }
      else {
        normalized += aux;
        normalized += norm;
      }
      aux = "";
    }
    print("norm: ${normalized}");
  }


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
                  Text(textOperations+aux),
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
                            symbol("", "pow", 3);
                          });
                        }),
                    ButtonModel(
                        title: "√",
                        method: () {
                          setState(() {
                            symbol("√", "sqrt", 1);
                          });
                        }),
                    ButtonModel(
                        title: "/",
                        method: () {
                          setState(() {
                            symbol("/", "/", 2);
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "7",
                        method: () {
                          setState(() {
                            aux += "7";
                          });
                        }),
                    ButtonModel(
                        title: "8",
                        method: () {
                          setState(() {
                            aux += "8";
                          });
                        }),
                    ButtonModel(
                        title: "9",
                        method: () {
                          setState(() {
                            aux += "9";
                          });
                        }),
                    ButtonModel(
                        title: "x",
                        method: () {
                          setState(() {
                            symbol("x", "*", 2);
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "4",
                        method: () {
                          setState(() {
                            aux += "4";
                          });
                        }),
                    ButtonModel(
                        title: "5",
                        method: () {
                          setState(() {
                            aux += "5";
                          });
                        }),
                    ButtonModel(
                        title: "6",
                        method: () {
                          setState(() {
                            aux += "6";
                          });
                        }),
                    ButtonModel(
                        title: "-",
                        method: () {
                          setState(() {
                            symbol("-", "-", 2);
                          });
                        }),
                  ]),
                  buttonsRow([
                    ButtonModel(
                        title: "1",
                        method: () {
                          setState(() {
                            aux += "1";
                          });
                        }),
                    ButtonModel(
                        title: "2",
                        method: () {
                          setState(() {
                            aux += "2";
                          });
                        }),
                    ButtonModel(
                        title: "3",
                        method: () {
                          setState(() {
                            aux += "3";
                            print("aux: ${aux}");
                          });
                        }),
                    ButtonModel(
                        title: "+",
                        method: () {
                          setState(() {
                            symbol("+", "+", 2);
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
