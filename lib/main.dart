import 'package:flutter/material.dart';
import 'package:nutritionfacts/nutrirender/nutrirender.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData.light(),
    title: "Nutritional Facts",
    home: nutritionFacts(),
  ));
}

class nutritionFacts extends StatefulWidget {
  nutritionFactsState createState() =>
      nutritionFactsState(nutritionData: {"FAT": 10.5});
}

class nutritionFactsState extends State<nutritionFacts> {
  final nutritionData;

  //Need to type it as Map<String,num>
  nutritionFactsState({@required this.nutritionData})
      : assert(nutritionData != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          border: new Border.all(color: Colors.white, width: 4.0)),
      child: Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            nutriHeader(),
            nutrientValues(),
            footerCalories(),
          ],
        ),
      ),
    );
  }
}
