import 'package:flutter/material.dart';
import 'package:swardhara_new/Suggested/SuggestedPage.dart';

class OurStartFaculties extends StatefulWidget {
  const OurStartFaculties({Key? key}) : super(key: key);

  @override
  _OurStartFacultiesState createState() => _OurStartFacultiesState();
}

class _OurStartFacultiesState extends State<OurStartFaculties> {
  List food=["https://www.nia.nih.gov/themes/nia/images/woyp/woyp-fruitjuice.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-driedfruit.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-cantaloupe.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-peach.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-driedfruit.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-grapes.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-bread.jpg","https://www.nia.nih.gov/themes/nia/images/woyp/woyp-cereal.jpg"];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20,bottom: 0,top: 10),
            child: Text(
              "Our Start Faculties",
              textAlign: TextAlign.start,
              style: TextStyle(

                fontFamily: 'Roboto',
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          height: 120,
          child: Center(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: food.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SuggestedPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 130,
                    width: 100,
                    child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt28SHuioMNFCApN0ZgSB2wW48od3GPaSbKQ&usqp=CAU"),
                    )
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
