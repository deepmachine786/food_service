import 'dart:io';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String regNum;
  final String messNum;
  final String messName;
  final File? image;
  late String dataTime;
  late String time;
  late String verificationCode;
  int size = 403;
  late String currentType = changeFood(); // mess type of the current ....

  DetailsPage({
    super.key,
    required this.name,
    required this.regNum,
    required this.messNum,
    required this.messName,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 246, 246),
      // appBar: AppBar(
      //   // backgroundColor: Color(0x323232),
      //   backgroundColor: Colors.black,
      //   title: Center(
      //       child: Text(
      //     'Mess Pass',
      //     style: TextStyle(
      //         fontFamily: 'Neutra', fontSize: 14, color: Colors.white60),
      //   )),
      //   actions: [
      //     IconButton(
      //       icon: Icon(Icons.close,
      //       size: 18.0,
      //       color: Colors.white60,),
      //       onPressed: () {
      //         Navigator.pop(context);
      //       },
      //     ),
      //   ],
      // ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 34, 34, 34),
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 5.0,
                  width: 35.0,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                    decoration: BoxDecoration(
                      border: const Border(
                        top: BorderSide(width: 5.0, color: Color(0xFFc0c0be)),
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFc0c0be),
                    ),
                  )),
              const SizedBox(
                height: 5.6,
              ),
              Text(
                'Mess Pass',
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 21.0,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      // this is not body part of the food name image and o
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(
            15.0), // this is use for dinner section from appbar inner space
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                height: 810,

                // color: Color(0xFFfdfcff),
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2.3, color: const Color(0xFfb2b2b2)),
                  borderRadius: BorderRadius.circular(20.0),

                  //r the dinner section border radius ...
                ),
                padding: const EdgeInsets.all(4.8),
                // Start the Actual Code from here ......
                child: Column(
                  children: [
                    // this is used to display the namne , and photo
                    SizedBox(
                      height: 160, //this is used for outer container
                      // color: Color(0xFFf9f9f9),

                      // color: Colors.blue,
                      // decoration: BoxDecoration(
                      //     border: Border.all(width: 1, color: Colors.black)),
                      child: Row(
                        children: [
                          Container(
                            width:
                                150, // this is used for inner of outer container
                            height: 160,
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                            padding: const EdgeInsets.fromLTRB(20, 18, 0, 0),
                            color: const Color(0xFFf9f9f9),
                            // decoration: BoxDecoration(
                            //     border:
                            //         Border.all(width: 1, color: Colors.black)),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   currentType,
                                //   style: const TextStyle(
                                //     fontFamily: 'Nunito',
                                //     fontWeight: FontWeight.bold,
                                //     fontSize: 26,
                                //     shadows: [
                                //       Shadow(
                                //         color: Colors
                                //             .grey, // Adjust opacity and color as needed
                                //         // spreadRadius: 5,
                                //         blurRadius: 6,
                                //         offset: Offset(
                                //             0, 1.8), // Offset of the shadow
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                Text(
                                  
                                  currentType,
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(221, 65, 64, 64), // Adjust opacity and color as needed
                                          // spreadRadius: 5,
                                          blurRadius: 4,
                                          offset: Offset(
                                              0, 1.1), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6.2,
                                ),
                                Text(
                                  regNum,
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      // fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(221, 65, 64, 64), // Adjust opacity and color as needed
                                          // spreadRadius: 5,
                                          blurRadius: 4,
                                          offset: Offset(
                                              0, 1.2), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 1.3,
                                ),
                                Text(
                                  name,
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      // fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(221, 65, 64, 64), // Adjust opacity and color as needed
                                          // spreadRadius: 5,
                                          blurRadius: 4,
                                          offset: Offset(
                                              0, 1.2), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 1.3,
                                ),
                                Text(
                                  '$messNum $messName',
                                  style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      shadows: [
                                        Shadow(
                                          color: Color.fromARGB(221, 65, 64, 64), // Adjust opacity and color as needed
                                          // spreadRadius: 5,
                                          blurRadius: 4,
                                          offset: Offset(
                                              0, 1.2), // Offset of the shadow
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Text('$messName'),
                              ],
                            ),
                          ), // this container used to display the name , mess name
                          const SizedBox(
                            width: 60,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topRight,
                              width: 160,
                              height: 170,
                              //       height: double.infinity,
                              // width: double.infinity,
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 9),
                              color: Color(0xFFf9f9f9),
                              // decoration: BoxDecoration(
                              //     border:
                              //         Border.all(width: 1, color: Colors.black)),
                              child: Center(
                                child: Stack(
                                  children: [
                                    // Shadow container
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      height: 140,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(
                                                0.9), // Adjust opacity and color as needed
                                            spreadRadius: 5,
                                            blurRadius: 9,
                                            offset: const Offset(
                                                0, 4), // Offset of the shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Container with image
                                    Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      height: 140,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: Colors.black),
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(90),
                                        child: image != null
                                            ? Image.file(
                                                image!,
                                                fit: BoxFit.fill,
                                              )
                                            : Image.asset(
                                                './assets/page-1/images/user.png',
                                                fit: BoxFit.cover,
                                              ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // this container is used to show the phto of user
                        ],
                      ),
                    ),

                    // this container used to show video of animation
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 470,
                      color: Colors.white,
                      // decoration: BoxDecoration(
                      //     border: Border.all(width: 1, color: Colors.black)),
                      child: Column(children: [
                        Container(
                          height: 55,
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 3),
                          color: Color(0xFFF9F9F9),
                          alignment: Alignment.center,
                          // decoration: BoxDecoration(
                          //     border:
                          //         Border.all(width: 1, color: Colors.black)),
                          // child: const Center(
                          child: Text(
                            'Meal Approved',
                            style: GoogleFonts.nunito(
                              textStyle: TextStyle(
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.bold,
                                fontSize: 23.5,
                                color: Color(0xFF59C11A),
                                shadows: [
                                  Shadow(
                                    color: Color(0xFF59C11A),
                                    blurRadius: 3.5,
                                    offset: Offset(0, 1.2),
                                  )
                                ],
                              ),
                            ),
                          ),

                          // ),
                        ),
                        Center(
                          child: Container(
                            // height: 380,
                            margin: EdgeInsets.fromLTRB(0, 130, 0, 0),
                            // decoration: BoxDecoration(
                            //     border:
                            //         Border.all(width: 1, color: Colors.black)),
                            child: Center(
                                child: Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              height: 120,
                              width: 300,
                              child: ClipRRect(
                                  child: Image.asset(
                                'assets/page-1/images/ezgif.com-crop.gif',
                                fit: BoxFit.fitWidth,
                              )),
                            )),
                          ),
                        ),
                      ]),
                    ),

                    // tis containe is uysed for showing the dat a, time and verification .
                    Container(
                      height: 160,
                      width: 550,
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      // decoration: BoxDecoration(
                      //     border: Border.all(width: 1, color: Colors.black)),
                      child: Column(
                        children: [
                          // this container is used for data and year
                          Container(
                              alignment: Alignment.topLeft,
                              height: 40,
                              // decoration: BoxDecoration(
                              //     border: Border.all(
                              //         width: 1, color: Colors.black)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(18, 0, 0, 0),
                                    // this container for Text ..
                                    width: 100,

                                    alignment: Alignment.center,
                                    // decoration: BoxDecoration(
                                    //     border: Border.all(
                                    //         width: 1, color: Colors.black)),
                                    child: Text(
                                      'Date',
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Container(
                                    // this container is usded for the Year
                                    width: 150,
                                    alignment: Alignment.centerRight,
                                    // decoration: BoxDecoration(
                                    //     border: Border.all(
                                    //         width: 1, color: Colors.black)),
                                    child: Text(
                                      changeDataFormat(
                                          DataTimeFormat().toString()),
                                      style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                            color: Color(0xFF777475)),
                                      ),
                                    ),
                                  )
                                ],
                              )),
                          // this container for line betwenn data and time ....
                          Container(
                            height: 0.5,
                            // margin: EdgeInsets.fromLTRB(0,0,20,0),
                            // width: 280,
                            // color: Colors.black,

                            margin: EdgeInsets.fromLTRB(46.7, 2.5, 60.6, 0),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1.15, color: Colors.grey),
                            ),
                            // decoration: BoxDecoration(
                            // border:
                            //     Border.all(width: 1, color: const Color.fromARGB(255, 211, 39, 39)),

                            // borderRadius: BorderRadius.circular(1)),
                          ),

                          // this container is used ofr the timer and ccurrent time
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            height: 40,
                            // decoration: BoxDecoration(
                            //     border:
                            //         Border.all(width: 1, color: Colors.black)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  // this container for Text ..
                                  width: 100,
                                  margin: EdgeInsets.fromLTRB(18, 10, 0, 0),
                                  alignment: Alignment.center,
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(
                                  //         width: 1, color: Colors.black)),
                                  child: Text(
                                    'Time',
                                    style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Container(
                                  // this container is usded for the Year
                                  margin: EdgeInsets.fromLTRB(0, 10.5, 0, 0),

                                  width: 150,
                                  alignment: Alignment.centerRight,
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(
                                  //         width: 1, color: Colors.black)),
                                  child: Text(
                                    changeTimeFormat(TimeUpdate()),
                                    style: GoogleFonts.nunito(
                                        textStyle: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(255, 110, 109, 110))),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // this container is used for the verification code with random number ...
                          Container(
                              margin: EdgeInsets.fromLTRB(20, 18, 30, 0),
                              padding: EdgeInsets.fromLTRB(18.5, 0, 0, 0),
                              height: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      'Verification Code',
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17.6,
                                      )),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 45.9,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      // Random.secure(1000),
                                      (Random().nextInt(9000000) + 1000000)
                                          .toString(),
                                      style: GoogleFonts.nunito(
                                          textStyle: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      )),
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                )

                // **************************************************
                //
                // ****************************************8

                ),
          ],
        ),
      ),
    );
  }
}

int changeStatus = 0;
changeFood() {
  // calculate the current time and check with the eating time ..
  int break_start = (7 * 60 + 30);
  int break_end = (9 * 60 + 30); // 7:30 - 9:30 pm
  int lunch_start = (11 * 60 + 30);
  int luch_end = (15 * 60); // 11:30 - 15:00
  int tea_start = (17 * 60);
  int tea_end = (18 * 60 + 30); // 17:00 - 18:30
  int dinner_start = (19 * 60 + 30);
  int dinner_end = (21 * 60 + 30); // 19:30 - 21:30

  return changeStatus >= break_start && changeStatus <= break_end
      ? "Breakfast"
      : changeStatus >= lunch_start && changeStatus <= luch_end
          ? "Lunch"
          : changeStatus >= tea_start && changeStatus <= tea_end
              ? "Tea"
              : changeStatus >= dinner_start && changeStatus <= dinner_end
                  ? "Dinner"
                  : "No Meal";
}

DataTimeFormat() {
  var dataTime = DateTime.now();
  String value = DateFormat.yMMMMd().format(dataTime);
  // set the time to check it time to eating or not
  return value;

  // this is used for time and data ....
}

TimeUpdate() {
  return DateFormat.Hm().format(DateTime.now());
  // this is the time ad the indian format .....
}

changeTimeFormat(String oldtime) {
  Map<String, String> changeTime = {
    "13": "01",
    "14": "02",
    "15": "03",
    "16": "04",
    "17": "05",
    "18": "06",
    "19": "07",
    "20": "08",
    "21": "09",
    "22": "10",
    "23": "11",
    "24": "12"
  };

  List<String> time = oldtime.split(":");
  changeStatus = (int.parse(time[0]) * 60 + int.parse(time[1]));
  if (changeTime.containsKey(time[0])) {
    return changeTime[time[0]]! + ":" + time[1] + " " + "PM";
  } else {
    return oldtime + " " + "AM";
  }
}

changeDataFormat(String olddata) {
  String firstelement = olddata.split(" ")[0];
  Map<String, String> changedata = {
    'January': 'Jan',
    'February': 'Feb',
    'March': 'Mar',
    'April': 'Apr',
    'May': 'May',
    'June': 'Jun',
    'July': 'Jul',
    'August': 'Aug',
    'September': 'Sep',
    'October': 'Oct',
    'November': 'Nov',
    'December': 'Dec'
  };

  if (changedata.containsKey(firstelement)) {
    String? change = changedata[firstelement];
    String number = int.parse(olddata.split(" ")[1][0]) < 10
        ? "0" + olddata.split(" ")[1]
        : olddata.split(" ")[1];
    return change! + " " + number + " " + olddata.split(" ")[2];
  } else {
    return olddata;
  }
  // return olddata.split(" ")[0];
}
