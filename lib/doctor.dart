import 'package:flutter/material.dart';
import 'package:natureslink/chatApp/chatpage.dart';
import 'package:natureslink/customerSup.dart';
import 'package:natureslink/dbHelper/mongodb.dart';
import 'package:natureslink/insertVidTut.dart';
import 'package:natureslink/profile.dart';
import 'package:natureslink/videoList.dart';
import 'package:natureslink/videosTutorial.dart';
import 'package:natureslink/vtutorial.dart';
import 'package:natureslink/profile.dart';
import 'package:flutter/services.dart';
import 'package:natureslink/doctorsMessages.dart';
import 'globals.dart' as globals;

class Doctor extends StatefulWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Doctor> {
  Widget buildCard(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.5),
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  ' Appointments \n Scheduled',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => appointmentsDoctor()));
                    },
                    child: const Text("View"))
              ],
            ),
          ],
        ));
  }

  // Widget buildSchedule(BuildContext context) {
  //   return Container(
  //       width: double.infinity,
  //       decoration: BoxDecoration(
  //         color: Colors.green.withOpacity(0.5),
  //       ),
  //       child: Column(
  //         children: [
  //           Container(
  //             decoration: BoxDecoration(
  //               color: Colors.black.withOpacity(0.5),
  //             ),
  //             alignment: Alignment.centerLeft,
  //             padding: const EdgeInsets.symmetric(
  //               horizontal: 25,
  //               vertical: 20,
  //             ),
  //             child: Row(
  //               children: [
  //                 ElevatedButton(
  //                   style: ButtonStyle(
  //                     backgroundColor:
  //                         MaterialStateProperty.all<Color>(Colors.green),
  //                   ),
  //                   onPressed: () {
  //                     Navigator.push(context,
  //                         MaterialPageRoute(builder: (context) => Doctor()));
  //                   },
  //                   child: const Text("Cancel"),
  //                 ),
  //                 SizedBox(width: 20),
  //                 Column(
  //                   children: [
  //                     Text(
  //                       "Appointments Scheduled",
  //                       style: TextStyle(
  //                           decoration: TextDecoration.none,
  //                           color: Colors.white,
  //                           fontSize: 25,
  //                           fontWeight: FontWeight.bold),
  //                     ),
  //                   ],
  //                 ),
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20,
  //           ),
  //           Container(
  //             height: 800,
  //           )
  //         ],
  //       ));
  // }

  Widget buildCustomerSup() {
    return Container(
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.5),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
              ),
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Customer Supports",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 50),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => customerSup()));
                    },
                    child: const Text("Here"),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildInsertVT(BuildContext context) => Card(
        color: Colors.green[300],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => insertVidTut()));
          },
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  'Insert Video Tutorials',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );

  Widget buildTherapies() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.5),
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 25,
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'Insert Videos Here!',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                children: <Widget>[
                  buildInsertVT(context),
                  SizedBox(width: 10),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // Widget buildDoctors(BuildContext context) {
  //   return Container(
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //       color: Colors.white.withOpacity(0.5),
  //     ),
  //     padding: EdgeInsets.all(10),
  //     child: Column(
  //       children: <Widget>[
  //         Container(
  //           child: Column(
  //             children: <Widget>[
  //               Text(
  //                 'Available here!!',
  //                 textAlign: TextAlign.left,
  //                 style: TextStyle(
  //                     color: Colors.black,
  //                     fontSize: 25,
  //                     fontWeight: FontWeight.bold),
  //               ),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget buildTutorials(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.7),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => videoList()));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Text(
                            'Video Tutorials',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          // SingleChildScrollView(
          //     scrollDirection: Axis.horizontal,
          //     child: Row(
          //       children: [
          //         buildTutorial1(context),
          //         SizedBox(height: 15),
          //       ],
          //     )),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Text(
                  'Natureslink',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage("""
assets/images/logo.png"""), fit: BoxFit.cover),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration:
            const BoxDecoration(image: DecorationImage(image: AssetImage("""
assets/images/bg.png"""), fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildHeader(context),
              SizedBox(height: 20),
              buildCard(context),
              SizedBox(height: 15),
              buildTherapies(),
              SizedBox(height: 15),
              // buildDoctors(context),
              // SizedBox(height: 15),
              buildTutorials(context),
              SizedBox(height: 15),
              buildCustomerSup(),
            ],
          ),
        ),
      ),
    );
  }
}

@override
void initState() {}
