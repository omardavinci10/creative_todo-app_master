import 'package:creative_app/constantes/styles.dart';
import 'package:creative_app/widgets/navigator_button.dart';
import 'package:creative_app/widgets/plus_button.dart';
import 'package:flutter/material.dart';

class NoTask extends StatelessWidget {
  const NoTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          color: Colors.red,
          width: MediaQuery.of(context).size.width / 1.2,
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Hero(
                  child: Image.asset('assets/images/Clipboard-empty.png'),
                  tag: 'dodo',
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Text(
                      'No Task',
                      style: title,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'You have no tasks to do.',
                      style: subTitle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PlusButton(),
      bottomNavigationBar: NavigatorButton(),
    );
  }
}
