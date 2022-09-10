import 'package:flutter/material.dart';

import '../models/button.model.dart';

Widget buttonsRow(List<ButtonModel> buttons) {
  List<Widget> buttonsList = [];
  buttons.forEach(
    (element) {
      buttonsList.add(ElevatedButton(
          onPressed: element.method, child: Text(element.title)));
    },
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: buttonsList,
  );
}
