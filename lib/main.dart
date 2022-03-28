import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/screens/myhome_page.dart';
import 'package:creative_app/screens/on_boarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: MyColors.greyBackground,
      ),
      home: OnBoarding(),
    );
  }
}
