import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/constantes/styles.dart';
import 'package:creative_app/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  MyShowModelBottomSheet myShowModelBottomSheet = MyShowModelBottomSheet();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        myShowModelBottomSheet.myShowBottomSheet(context);
      },
      backgroundColor: MyColors.trashRed,
      elevation: 5,
      child: Container(
        child: Container(
          child: Image.asset(
            'assets/images/fab-add.png',
          ),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          boxShadow: [boxShadow(MyColors.purpleShadow)],
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
