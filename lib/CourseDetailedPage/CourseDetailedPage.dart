import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swardhara_new/CourseDetailedPage/Components/Materials.dart';
import 'package:swardhara_new/CourseDetailedPage/Components/Videos.dart';
import 'package:swardhara_new/Youtube/Youtube%20Player.dart';
import 'dart:core';

class CourseDetailedPage extends StatefulWidget {
  CourseDetailedPage({
    Key? key,
  }) : super(key: key);

  @override
  _CourseDetailedPageState createState() => _CourseDetailedPageState();
}

int? segmentedControlValue = 0;

final Map<int, Widget> children = const <int, Widget>{
  0: Text("Videos"),
  1: Text("Materials"),
  2: Text("Assignments"),
  3: Text("Simulation"),
};

class _CourseDetailedPageState extends State<CourseDetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YoutubePage('p2lYr3vM_1w')));
              },
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    child: Image.network(
                      'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 200,
                    left: 10,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          child: Icon(
                            Icons.play_arrow,
                          ),
                          backgroundColor: Colors.orange,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 65,
                          child: Text(
                            'Complementary Volume - Free lessons to experience the learning ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Roboto',
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 150,
            //   width: double.infinity,
            //   child: Padding(
            //     padding: const EdgeInsets.all(15.0),
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       children: [
            //         // Text(
            //         //   "Complementery Volume - Free Lessons to experience the learning process ",
            //         //   style: TextStyle(
            //         //     fontSize: 17,
            //         //     fontFamily: 'Roboto',
            //         //   ),
            //         // ),
            //         Container(
            //           alignment: Alignment.topLeft,
            //           child: Container(
            //             margin: const EdgeInsets.all(5.0),
            //             padding: const EdgeInsets.all(5.0),
            //             decoration: BoxDecoration(
            //               border: Border.all(
            //                 color: Colors.orange,
            //               ),
            //             ),
            //             child: Text('Premium'),
            //           ),
            //         ),
            //         Divider(
            //           height: 10,
            //         )
            //       ],
            //     ),
            //   ),
            // ),

            Container(
              padding: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: CupertinoSlidingSegmentedControl(
                  groupValue: segmentedControlValue,
                  children: children,
                  onValueChanged: (int? item) {
                    print(item);
                    setState(() {
                      segmentedControlValue = item;
                    });
                  }),
            ),

            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              alignment: Alignment.topLeft,
              child: Text(
                'Videos',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            segmentedControlValue == 0 ? Videos() : Materials()
          ],
        ),
      ),
    );
  }
}
