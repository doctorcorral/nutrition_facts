import 'package:flutter/material.dart';
import 'package:nutritionfacts/nutrirender/nutrirender.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
          ],
        ),
      ),
    );
  }
}

Widget nutrientValues() {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        nutrientLine(nutrientName: "Total Fat", qty: 0, ptg: 0),
        nutrientSubLine(nutrientName: "Saturated Fat", qty: 0, ptg: 0),
        nutrientSubLine(nutrientName: "Trans Fat", qty: 0, ptg: 0),
        nutrientLine(nutrientName: "Cholesterol", qty: 0, ptg: 0),
        nutrientLine(nutrientName: "Sodium", qty: 0, ptg: 0),
        nutrientLine(nutrientName: "Total Carbohidrate", qty: 5, ptg: 0),
        nutrientSubLine(nutrientName: "Dietary Fiber", qty: 0, ptg: 0),
        nutrientSubLine(nutrientName: "Sugars", qty: 0, ptg: 0),
        nutrientSubLine(nutrientName: "Protein", qty: 1, ptg: null),
        footerCalories(),
      ]);
}
