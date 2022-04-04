import 'package:creative_app/screens/myhome_page.dart';
import 'package:flutter/material.dart';

import '../sqflite.dart';

class UpdateScreen extends StatefulWidget {
  final title;
  late final time;
  late final date;
  late final type;
  late final id;

  UpdateScreen(
      {required this.title,
      required this.date,
      required this.type,
      required this.time,
      required this.id});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  SqfLiteApp sqfLiteApp = SqfLiteApp();
  TextEditingController titleController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController dataController = TextEditingController();
  TextEditingController stateController = TextEditingController();

  @override
  void initState() {
    titleController.text = widget.title;
    timeController.text = widget.time;
    dataController.text = widget.date;
    stateController.text = widget.type;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UpdateScreen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  onPressed: () async {
                    int response =
                        await sqfLiteApp.updateData('''UPDATE tasks SET
                    title= "${titleController.text}",
                    date="${dataController.text}",
                    time="${timeController.text}",
                    type="${stateController.text}"
                    WHERE id=${widget.id}
                    ''');
                    if (response > 0) {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ),
                          (route) => false);
                    }
                    print('ooooooooooooooo');
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('update'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
