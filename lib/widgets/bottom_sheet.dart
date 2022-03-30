import 'package:creative_app/constantes/colors.dart';
import 'package:creative_app/constantes/styles.dart';
import 'package:flutter/material.dart';

class MyShowModelBottomSheet {
  var textController = TextEditingController();

  myShowBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => Container(
        // padding:
//         EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              top: MediaQuery.of(context).size.height / 8,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(175, 25),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 340,
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Image.asset(
                          'assets/images/fab-delete.png',
                        ),
                        width: 50,
                        height: 50,
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
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Add new task',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: TextFormField(
                            controller: textController,
                            style: TextStyle(
                              fontSize: 22,
                              fontStyle: FontStyle.normal,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Enter something',
                              prefixIcon: Icon(Icons.edit),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width / 1.2,
                          padding: EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.5,
                                color: MyColors.textGrey,
                              ),
                            ),
                          ),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Center(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: MyColors.yellowAccent,
                                        shape: BoxShape.circle,
                                      ),
                                      margin: EdgeInsets.only(right: 4),
                                      height: 10,
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text('Personal'),
                                      margin: EdgeInsets.only(right: 10),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: MyColors.greenIcon,
                                        shape: BoxShape.circle,
                                      ),
                                      margin: EdgeInsets.only(right: 4),
                                      height: 10,
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text('Work'),
                                      margin: EdgeInsets.only(right: 10),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: MyColors.purpleIcon,
                                        shape: BoxShape.circle,
                                      ),
                                      margin: EdgeInsets.only(right: 4),
                                      height: 10,
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text('Meeting'),
                                      margin: EdgeInsets.only(right: 10),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: MyColors.blueIcon,
                                        shape: BoxShape.circle,
                                      ),
                                      margin: EdgeInsets.only(right: 4),
                                      height: 10,
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text('Study'),
                                      margin: EdgeInsets.only(right: 10),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: MyColors.orangeIcon,
                                        shape: BoxShape.circle,
                                      ),
                                      margin: EdgeInsets.only(right: 4),
                                      height: 10,
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text('Shopping'),
                                      margin: EdgeInsets.only(right: 10),
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: MyColors.deepPurpleIcon,
                                        shape: BoxShape.circle,
                                      ),
                                      margin: EdgeInsets.only(right: 4),
                                      height: 10,
                                      width: 10,
                                    ),
                                    Container(
                                      child: Text('Free Time'),
                                      margin: EdgeInsets.only(right: 10),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(
                            'Choose data',
                            style: TextStyle(
                                color: MyColors.textSubHeaderGrey,
                                fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Row(
                            children: [
                              Text(
                                'Today, 19:00 - 21:00',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              RotatedBox(
                                quarterTurns: 1,
                                child: Icon(Icons.chevron_right),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          padding: EdgeInsets.all(10),
                          child: Container(
                            height: 50,
                            width: 240,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                  colors: [
                                    MyColors.blueDark,
                                    MyColors.blueLight,
                                  ],
                                ),
                                boxShadow: [
                                  boxShadow(MyColors.greyBorder),
                                ]),
                            child: Center(
                              child: Text(
                                'Add task',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//                         ),
//                         SizedBox(height: 10),
//                         Container(
//                           width: MediaQuery.of(context).size.width / 1.2,
//                           height: 150,
//                           child: ListView.builder(
//                             itemCount: subTasks.length,
//                             itemBuilder: (BuildContext context, int index) {
//                               return Container(
//                                 margin: const EdgeInsets.only(bottom: 5.0),
//                                 child: TextFormField(
//                                   initialValue: subTasks[index],
//                                   autofocus: false,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                     fontStyle: FontStyle.normal,
//                                     color: Colors.grey[850],
//                                   ),
//                                   decoration: InputDecoration(
//                                     border: InputBorder.none,
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Colors.grey,
//                                         width: 1.0,
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(50.0),
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Colors.blue,
//                                         width: 2.0,
//                                       ),
//                                       borderRadius: BorderRadius.all(
//                                         Radius.circular(50.0),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               );
//                             },
//                           ),
//                         ),
//                         SizedBox(height: 25),
//                         RaisedButton(
//                           onPressed: () {
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(builder: (context) => Home()),
//                             );
//                             // Navigator.pop(context);
//                           },
//                           textColor: Colors.white,
//                           padding: const EdgeInsets.all(0.0),
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8.0),
//                           ),
//                           child: Container(
//                             width: MediaQuery.of(context).size.width / 1.2,
//                             height: 60,
//                             decoration: const BoxDecoration(
//                               gradient: LinearGradient(
//                                 colors: <Color>[
//                                   CustomColors.BlueLight,
//                                   CustomColors.BlueDark,
//                                 ],
//                               ),
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(8.0),
//                               ),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: CustomColors.BlueShadow,
//                                   blurRadius: 2.0,
//                                   spreadRadius: 1.0,
//                                   offset: Offset(0.0, 0.0),
//                                 ),
//                               ],
//                             ),
//                             padding:
//                             const EdgeInsets.fromLTRB(20, 10, 20, 10),
//                             child: Center(
//                               child: const Text(
//                                 'Add task',
//                                 style: TextStyle(
//                                     fontSize: 18,
//                                     fontWeight: FontWeight.w500),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }
