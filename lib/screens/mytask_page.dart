import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/constantes/styles.dart';
import 'package:creative_app/widgets/my_appbar.dart';
import 'package:creative_app/widgets/navigator_button.dart';
import 'package:creative_app/widgets/plus_button.dart';
import 'package:flutter/material.dart';

class MyTaskPage extends StatelessWidget {
  final intIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210),
        child: appBarNotification(context),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => Container(
                  margin: EdgeInsets.only(left: 10, top: 15, bottom: 0),
                  child: Text(
                    'Projects',
                    style: subTitle,
                  ),
                ),
                childCount: 1,
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 2,
              children: [
                boxContainer(
                    'assets/images/icon-user.png', 'Personal', '24 Task'),
                boxContainer(
                    'assets/images/icon-briefcase.png', 'Work', '24 Task'),
                boxContainer('assets/images/icon-presentation.png', 'Meeting',
                    '24 Task'),
                boxContainer(
                    'assets/images/icon-molecule.png', 'Study', '24 Task'),
                boxContainer('assets/images/icon-shopping-basket.png',
                    'Shopping', '24 Task'),
                boxContainer(
                    'assets/images/icon-confetti.png', 'Free Time', '24 Task'),
              ],
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

Widget boxContainer(String image, String text, String subTitleText) {
  return Container(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 65,
            width: 65,
            child: Image.asset(
              image,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: MyColors.yellowBackground),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: title,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            subTitleText,
            style: subTitle,
          ),
        ],
      ),
    ),
    height: 150,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [boxShadow(MyColors.greyBorder)],
    ),
  );
}
