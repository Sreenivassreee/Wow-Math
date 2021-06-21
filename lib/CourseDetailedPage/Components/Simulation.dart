import 'package:flutter/material.dart';

class SimulationScreen extends StatelessWidget {
  const SimulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        primary: false,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 7,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 2 / 1),
        itemBuilder: (_, index) {
          return Container(
            padding: EdgeInsets.all(2),
            height: 20,
            width: 20,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text("Info"),
              ),
            ),
          );
        });
  }
}
