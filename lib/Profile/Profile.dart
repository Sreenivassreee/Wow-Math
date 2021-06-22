import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swardhara_new/LoginPage/LoginPage.dart';
import 'package:swardhara_new/Themes/Provider.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool auth = true;

  @override
  void initState() {
    super.initState();

    if (!auth) {
      Timer(Duration(milliseconds: 100), () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DarkThemeProvider>(context);
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 50),
            Container(
              child: Stack(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),

            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student Name :",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Student ID :",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Batch ID :",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sreenivasulu Kummara",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "19HR1A0510",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "CSE A",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                themeProvider.darkTheme = !themeProvider.darkTheme;
              },
              child: Card(
                elevation: 0,
                child: ListTile(
                  title: Text("Theme"),
                  subtitle: Text(
                    !themeProvider.darkTheme ? "Light Theme" : "Dark Theme",
                  ),
                  leading: Icon(
                    themeProvider.darkTheme
                        ? Icons.dark_mode
                        : Icons.light_mode,
                  ),
                ),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => LoginPage(),
                  //   ),
                  // );
                },
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                    ),
                  ),
                  child: Center(child: Text('PAYMENT HISTORY')),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.all(5.0),
                  padding: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orange,
                    ),
                  ),
                  child: Center(child: Text('LOGOUT')),
                ),
              ),
            ),

            // InkWell(
            //   onTap: () {
            //     themeProvider.darkTheme = !themeProvider.darkTheme;
            //   },
            //   child: Card(
            //     elevation: 0,
            //     child: ListTile(
            //       title: Text("Mobile"),
            //       subtitle: Text("9876543210"),
            //       leading: Icon(
            //         Icons.mobile_screen_share,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ),
            // ),
            // Card(
            //   elevation: 0,
            //   child: ListTile(
            //     title: Text("Plan"),
            //     subtitle: Text("Unlimited video streaming"),
            //     leading: Icon(
            //       Icons.card_travel_outlined,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            // Checkbox(
            //     value: true,
            //     onChanged: (b) {
            //       themeProvider.darkTheme = !themeProvider.darkTheme;
            //     }),
          ],
        ),
      ),
    );
  }
}
