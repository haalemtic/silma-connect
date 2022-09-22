import 'package:flutter/material.dart';

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

Color primaryColor = Color(0XFF000000);
Color secondaryColor = Color(0xFFec3655);

Color threeColor = Color.fromARGB(255, 255, 170, 170);
const TextStyle kBodyText =
    TextStyle(fontSize: 22, color: Colors.black, height: 1.5);

InkWell backbtn(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Icon(Icons.arrow_back_ios),
  );
}
