import 'package:flutter/material.dart';

import 'package:swardhara_new/HomePage/components/AboutAs.dart';
import 'package:swardhara_new/HomePage/components/Courses.dart';
import 'package:swardhara_new/HomePage/components/Our_Start_Faculties.dart';
import 'package:swardhara_new/HomePage/components/slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
            height:100,
            child: Image.asset('assets/images/Logo-2.png')),
        // backgroundColor: Colors.black,
        // backgroundColor:Color(0xffe5634d),
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyText2!,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.minHeight,
                ),
                child: IntrinsicHeight(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    SizedBox(height: 10),
                    Expanded(child: VerticalSlider()),
                    SizedBox(height: 20),
                    Flexible(child: OurStartFaculties()),
                    SizedBox(height: 20),
                    Courses(),
                    // AboutUs()
                  ],
                )),
              ),
            );
          },
        ),
      ),
    );
  }
}
