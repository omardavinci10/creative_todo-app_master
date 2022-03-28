import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/constantes/styles.dart';
import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  const PlusButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: MyColors.trashRed,
      elevation: 5,
      child: Container(
        child: Icon(
          Icons.add,
          size: 30,
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          boxShadow: [boxShadow],
          borderRadius: BorderRadius.circular(50),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              MyColors.purpleLight,
              MyColors.purpleDark,
            ],
          ),
        ),
      ),
    );
  }
}
