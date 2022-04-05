import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/sqflite.dart';

import 'package:creative_app/widgets/ink_bottom.dart';

import 'package:creative_app/widgets/my_appbar.dart';
import 'package:creative_app/widgets/navigator_button.dart';
import 'package:creative_app/widgets/plus_button.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SqfLiteApp sqfLiteApp = SqfLiteApp();
  List data = [];
  bool isLoading = true;
  var intIndex = 0;

  Future getDatabase() async {
    List<Map> response = await sqfLiteApp.getDatabase();
    data.addAll(response);
    isLoading = false;
    if (this.mounted) setState(() {});
  }

  void initState() {
    super.initState();
    getDatabase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210),
        child: appBarNotification(context),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
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
                        buildListTile(context),
                    itemCount: 20,
                  ),
                ],
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
