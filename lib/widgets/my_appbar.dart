import 'package:creative_app/constantes/colors.dart';
import 'package:flutter/material.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

Widget MyAppBar() {
  return PreferredSize(
    child: NewGradientAppBar(
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [],
      ),
      elevation: 5,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [MyColors.headerBlueDark, MyColors.headerBlueLight],
      ),
    ),
    preferredSize: Size.fromHeight(75),
  );
}
