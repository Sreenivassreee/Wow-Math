import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:swardhara_new/Curriculum/curriculum.dart';
import 'package:swardhara_new/HomePage/homepage.dart';
import 'package:swardhara_new/MyCourses/MyCourses.dart';
import 'package:swardhara_new/PayU/Test.dart';
import 'package:swardhara_new/Profile/Profile.dart';
import 'package:swardhara_new/WebView/WebviewScreen.dart';
import 'package:swardhara_new/Youtube/Youtube%20Player.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _pageIndex = 0;
  PageController _pageController = PageController();
  bool auth = true;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._pageIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.jumpToPage(index);
    // this._pageController.animateToPage(index,
    //     duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var _widgetOptions = <Widget>[
    HomePage(),
    // MyAppPayment(),
    MyCourses(),
    Curriculum(),
    Profile(),
    WebViewExample(),

    // Text(
    //   'Index 1: Curriculum',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 2: Profile',
    //   style: optionStyle,
    // ),
    // Text(
    //   'Index 3: Settings',
    //   style: optionStyle,
    // ),
    // Profile()
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoTabScaffold(
          tabBar: CupertinoTabBar(items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rectangle),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
            )
          ]),
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return HomePage();
                break;
              case 1:
                return MyCourses();
                break;
              case 2:
                return Curriculum();
                break;
              default:
                return Profile();
                break;
            }
          });
    } else
      return Scaffold(
        body: PageView(
            scrollDirection: Axis.horizontal,
            children: _widgetOptions,
            onPageChanged: onPageChanged,
            controller: _pageController,
            physics: new NeverScrollableScrollPhysics()),
        // Center(
        //   child:_widgetOptions.elementAt(_selectedIndex),
        // ),

        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _pageIndex,
          // backgroundColor: Color(0xff121212),
          unselectedItemColor: Colors.grey,
          // backgroundColor: Colors.white,
          elevation: 20,
          selectedItemColor: Colors.deepOrange,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              label: 'MY COURSES',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.report),
              label: 'REPORTS',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.person,
              ),
              label: 'PROFILE',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.text_badge_star,
              ),
              label: 'Test',
            ),
          ],
          // currentIndex: _selectedIndex,
        ),
      );
  }
}
