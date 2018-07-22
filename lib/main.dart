import 'package:flutter/material.dart';

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
          border: new Border.all(color: Colors.white, width: 7.0)),
      child: Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            nutriHeader(),
            Container(
                margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                height: 3.0,
                color: Colors.black),
          ],
        ),
      ),
    );
  }
}

Widget nutriHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Nutrition Facts",
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.black, fontSize: 45.0, fontWeight: FontWeight.w700),
      ),
      Text(
        "Serving Size 8 oz",
        style: TextStyle(
            fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      Text(
        "Servings per container 1.5",
        style: TextStyle(
            fontSize: 17.0, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 5.0,
        color: Colors.black,
      ),
      Text(
        "Ammount Per Serving",
        style: TextStyle(
            fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w900),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 1.0,
        color: Colors.black,
      ),
      Row(children: <Widget>[
        Text(
          "Calories ",
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w900),
        ),
        Text(
          " 23",
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ]),
      Container(
          margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 3.0,
          color: Colors.black),
      Container(
        margin: const EdgeInsets.only(left: 220.0, right: 1.0),
        child: Text(
          "% Daily Value*",
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}
