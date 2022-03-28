import 'package:creative_app/constantes/colors.dart';
import 'package:flutter/cupertino.dart';

const TextStyle title = TextStyle(
    fontSize: 22, fontWeight: FontWeight.w500, color: MyColors.textSubHeader);

const TextStyle subTitle = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w400,
    color: MyColors.textBody,
    fontFamily: 'opensans');

const BoxShadow boxShadow = BoxShadow(
  color: MyColors.greenShadow,
  blurRadius: 15,
  spreadRadius: 8,
  offset: Offset(3, 3),
);
