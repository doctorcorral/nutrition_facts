import 'package:flutter/material.dart';

Widget nutrientValues() {
  final nutrientTypes = [
    {"nutrient": "FAT", "name": "Total Fat", "sub": false, "unit": "g"},
    {"nutrient": "SATFAT", "name": "Saturated Fat", "sub": true, "unit": "g"},
    {"nutrient": "TRANSFAT", "name": "Trans Fat", "sub": true, "unit": "g"},
    {"nutrient": "CHOLE", "name": "Cholesterol", "sub": false, "unit": "mg"},
    {"nutrient": "NA", "name": "Sodium", "sub": false, "unit": "mg"},
    {
      "nutrient": "CHOCDF",
      "name": "Total Carbohidrate",
      "sub": false,
      "unit": "g"
    },
    {"nutrient": "FIBER", "name": "Dietary Fiber", "sub": true, "unit": "g"},
    {"nutrient": "SUGAR", "name": "Sugars", "sub": true, "unit": "g"},
    {"nutrient": "PROCNT", "name": "Protein", "sub": false, "unit": "g"}
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: nutrientTypes
        .map((d) => nutrientLiner(
            nutrientName: d["name"], qty: 0, ptg: 0, sub: d["sub"]))
        .toList(),
  );
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
        alignment: Alignment.topRight,
        child: Text(
          "% Daily Value*",
          textAlign: TextAlign.right,
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w600),
        ),
      )
    ],
  );
}

Widget nutrientLiner({
  @required nutrientName,
  @required qty,
  ptg,
  sub: false,
  unit: "g",
}) {
  final textSize = 18.0;
  final textWeight1 = FontWeight.w900;
  final textWeight2 = FontWeight.w500;
  return Container(
      padding: (sub)
          ? EdgeInsetsDirectional.only(start: 26.0, end: 1.0)
          : EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
      child: Column(children: <Widget>[
        Container(
            margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
            height: 1.0,
            color: Colors.black),
        Row(
          children: <Widget>[
            Text(
              nutrientName,
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: (sub) ? textWeight2 : textWeight1),
            ),
            Text(
              "${qty}${unit}",
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: textWeight2),
            ),
            Expanded(
                // margin: const EdgeInsets.only(left: 100.0, right: 1.0),
                child: Text(
              ((ptg != null) ? "${ptg}%" : ""),
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: textSize,
                color: Colors.black,
                fontWeight: textWeight1,
              ),
            )),
          ],
        )
      ]));
}

Widget footerCalories({caloriesNum: 2000}) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 5.0,
          color: Colors.black,
        ),
        Text(
          "Percent Daily Values are based on a ${caloriesNum} calories diet",
          style: TextStyle(
              fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.w400),
        )
      ]);
}
