import 'package:creative_app/constantes/styles.dart';
import 'package:flutter/material.dart';

class InkBottom extends StatefulWidget {
  const InkBottom({Key? key}) : super(key: key);

  @override
  State<InkBottom> createState() => _InkBottomState();
}

class _InkBottomState extends State<InkBottom> {
  late Color myColor;
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isCheck = true;
        });
      },
      child: isCheck
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [boxShadow(myColor)]),
            )
          : Container(),
    );
  }
}
