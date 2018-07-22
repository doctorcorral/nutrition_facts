import 'package:flutter/material.dart';

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

Widget nutrientLine({
  @required nutrientName,
  @required qty,
  ptg,
  unit: "g",
}) {
  final textSize = 18.0;
  final textWeight1 = FontWeight.w900;
  final textWeight2 = FontWeight.w500;
  return Column(children: <Widget>[
    Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 1.0,
        color: Colors.black),
    Row(
      children: <Widget>[
        Text(
          nutrientName,
          style: TextStyle(
              fontSize: textSize, color: Colors.black, fontWeight: textWeight1),
        ),
        Text(
          "${qty}${unit}",
          style: TextStyle(
              fontSize: textSize, color: Colors.black, fontWeight: textWeight2),
        ),
        Container(
            margin: EdgeInsetsDirectional.only(start: 110.0, end: 0.0),
            //margin: const EdgeInsets.only(left: 100.0),
            child: Text(
              "${ptg}%",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: textWeight1),
            )),
      ],
    )
  ]);
}

Widget nutrientSubLine({
  @required nutrientName,
  @required qty,
  ptg,
  unit: "g",
}) {
  final textSize = 18.0;
  final textWeight1 = FontWeight.w900;
  final textWeight2 = FontWeight.w500;
  return Container(
      padding: EdgeInsetsDirectional.only(start: 26.0, end: 1.0),
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
                  fontWeight: textWeight2),
            ),
            Text(
              "${qty}${unit}",
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: textWeight2),
            ),
            Container(
                margin: const EdgeInsets.only(left: 100.0, right: 1.0),
                child: Text(
                  ((ptg != null) ? "${ptg}%" : ""),
                  //"${ptg}%",
                  style: TextStyle(
                      fontSize: textSize,
                      color: Colors.black,
                      fontWeight: textWeight1),
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
