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
                padding: const EdgeInsets.only(
                    left: 5.0, right: 5, bottom: 5, top: 5),
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 170,
                      child: Image.network(
                        'https://static.toiimg.com/thumb/msid-75824261,width-800,height-600,resizemode-75,imgsize-530578,pt-32,y_pad-40/75824261.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 10),
                          child: Container(
                            alignment: Alignment.topCenter,
                            width: MediaQuery.of(context).size.width - 170,
                            child: Text(
                              "Alankar - Three Swar ascending and descending ",
                              style: new TextStyle(
                                fontSize: 14.0,
                              ),
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
