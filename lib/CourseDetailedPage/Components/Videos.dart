import 'package:flutter/material.dart';
import 'package:swardhara_new/Youtube/Youtube%20Player.dart';

class Videos extends StatelessWidget {
  const Videos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // physics: BouncingScrollPhysics(),

      primary: false,
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, i) {
        return Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12, bottom: 0),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => YoutubePage('p2lYr3vM_1w'),
                  ),
                );

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => DetailedPage(),
                //   ),
                // );
              },
              child: Container(
                height: 120,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Image.network(
                          'https://static.toiimg.com/thumb/msid-75824261,width-800,height-600,resizemode-75,imgsize-530578,pt-32,y_pad-40/75824261.jpg',
                          height: 120,
                          width: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Container(
                    //   width: 100,
                    //   height: 170,
                    //   child: Image.network(
                    //     'https://static.toiimg.com/thumb/msid-75824261,width-800,height-600,resizemode-75,imgsize-530578,pt-32,y_pad-40/75824261.jpg',
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          width: MediaQuery.of(context).size.width - 170,
                          child: Text(
                            "Video title",
                            style: new TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          width: MediaQuery.of(context).size.width - 170,
                          child: Text(
                            "Description",
                            style: new TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
