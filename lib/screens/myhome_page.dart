import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/main.dart';
import 'package:creative_app/widgets/build_list_view.dart';
import 'package:creative_app/widgets/my_appbar.dart';
import 'package:creative_app/widgets/navigator_button.dart';
import 'package:creative_app/widgets/plus_button.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var intIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210),
        child: appBarNotification(context),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, bottom: 15),
                child: Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: MyColors.textSubHeader),
                ),
              ),
              ListView.builder(
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) =>
                    buildListView(context),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PlusButton(),
      bottomNavigationBar: NavigatorButton(
        context: context,
        intIndex: intIndex,
      ),
    );
  }
}
