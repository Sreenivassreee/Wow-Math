import 'package:flutter/material.dart';
import 'package:swardhara_new/DetailedPage/DetailedPage.dart';

class Courses extends StatefulWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  _CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {
  List li = [
    1,
    3,
    4,
    5,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: (li.length * 180) + 80,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20, bottom: 10),
              child: Text(
                "COURSES",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            child: new ListView.builder(
              //Element-5
              shrinkWrap: true,
              primary: false,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: li.length,
              itemBuilder: (context, i) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailedPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: double.infinity,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Image.network(
                                  'https://www.creaticity.co.in/images/eventcity/upcoming/sid-sriram.jpg',
                                  height: 150.0,
                                  width: 150.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  alignment: Alignment.centerLeft,
                                  width:
                                      MediaQuery.of(context).size.width - 190,
                                  child: Text(
                                    "Mobile Development",
                                    style: new TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width - 190,
                                    child: Text(
                                      "Complementary Volume",
                                      style: new TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Roboto',
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '12 Videos , 10 Assignments',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                      Text(
                                        'and More',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        // child: ListTile(
                        // title:
                        // Text(
                        //     "Complementary Volume - Free lessons to experience the learning process"),
                        // subtitle: Text("free"),
                        // leading: Padding(
                        //   padding: const EdgeInsets.all(5.0),
                        //   child: Container(
                        //     height: 200,
                        //     width: 80,
                        //     child: Image.network(
                        //       'https://imgmediagumlet.lbb.in/media/2019/01/5c3c6051e54eed62b2154427_1547460689639.jpg?fm=webp&w=750&h=500&dpr=1',
                        //       fit: BoxFit.cover,
                        //     ),
                        //   ),
                        // )
                        // ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
