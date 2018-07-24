import 'package:flutter/material.dart';

final nutrientData = {
  "CA": {"amount": 37.5, "unit": "mg"},
  "CHOCDF": {"amount": 342.1, "unit": "g"},
  "CHOLE": {"amount": 16.561, "unit": "mg"},
  "ENERC_KCAL": {"amount": 2135.9, "unit": "kcal"},
  "FAT": {"amount": 67.51, "unit": "g"},
  "FE": {"amount": 18.2, "unit": "mg"},
  "FIBTG": {"amount": 12.90, "unit": "g"},
  "FOLAC": {"amount": 385.0, "unit": "mcg"},
  "K": {"amount": 676.7, "unit": "mg"},
  "MG": {"amount": 133.07, "unit": "mg"},
  "NA": {"amount": 1038.89, "unit": "mg"},
  "NIA": {"amount": 19.49, "unit": "mg"},
  "P": {"amount": 381.19, "unit": "mg"},
  "PROCNT": {"amount": 35.99, "unit": "g"},
  "RIBF": {"amount": 1.6, "unit": "mg"},
  "SE": {"amount": 84.75, "unit": "mcg"},
  "SUGAR": {"amount": 74.49, "unit": "g"},
  "THIA": {"amount": 2.74, "unit": "mg"},
  "VITA_IU": {"amount": 5.0, "unit": "IU"},
  "VITB6A": {"amount": 0.11, "unit": "mg"},
  "VITD": {"amount": 28.39, "unit": "IU"},
  "VITK1": {"amount": 0.75, "unit": "mcg"},
  "ZN": {"amount": 2.93, "unit": "mg"},
  "SATFAT": {"amount": 4.2, "unit": "g"},
  "TRANSFAT": {"amount": 4.2, "unit": "g"},
  "FIBER": {"amount": 4.23456, "unit": "g"},
};

class NutritionFacts extends StatefulWidget {
  NutritionFactsState createState() =>
      NutritionFactsState(nutrientData: nutrientData);
}

class NutritionFactsState extends State<NutritionFacts> {
  final nutrientData;

  //Need to type it as Map<String,num>
  NutritionFactsState({@required this.nutrientData})
      : assert(nutrientData != null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.all(40.0),
      color: Colors.white,
      child: nutrientWidget(),
    ));
  }
}

Widget nutrientWidget() {
  return Container(
    padding: EdgeInsets.all(1.0),
    decoration:
        BoxDecoration(border: new Border.all(color: Colors.black, width: 2.0)),
    child: Container(
      padding: EdgeInsets.all(2.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          nutriHeader(calories: 23, servings: 3, servingSize: "8 oz."),
          nutrientValues(),
          footerCalories(),
        ],
      ),
    ),
  );
}

Widget nutrientValues() {
  //final n = (1.3456).toStringAsFixed(2);
  //final s = double.parse("1.2345");
  final nutrientTypes = [
    {"nutrient": "FAT", "name": "Total Fat", "sub": false, "dly": 65.0},
    {"nutrient": "SATFAT", "name": "Saturated Fat", "sub": true, "dly": 20.0},
    {"nutrient": "TRANSFAT", "name": "Trans Fat", "sub": true, "dly": null},
    {"nutrient": "CHOLE", "name": "Cholesterol", "sub": false, "dly": 300.0},
    {"nutrient": "NA", "name": "Sodium", "sub": false, "dly": 2400.0},
    {"nutrient": "K", "name": "Potassium", "sub": false, "dly": 3500.0},
    {
      "nutrient": "CHOCDF",
      "name": "Total Carbohidrate",
      "sub": false,
      "dly": 300.0,
    },
    {"nutrient": "FIBTG", "name": "Dietary Fiber", "sub": true, "dly": 25.0},
    {"nutrient": "SUGAR", "name": "Sugars", "sub": true, "dly": null},
    {"nutrient": "PROCNT", "name": "Protein", "sub": false, "dly": 50.0},
    {"nutrient": "VITB6A", "name": "Vitamin B6", "sub": false, "dly": 2.0},
    {"nutrient": "THIA", "name": "Thiamin", "sub": false, "dly": 1.5},
    {"nutrient": "VITA_IU", "name": "Vitamin A", "sub": false, "dly": 5000},
    {"nutrient": "VITD", "name": "Vitamin D", "sub": false, "dly": 400},
    {"nutrient": "VITK1", "name": "Vitamin K ", "sub": false, "dly": 80},
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: nutrientTypes
        .map((d) => nutrientLiner(
              nutrientName: d["name"],
              qty: nutrientData["${d["nutrient"]}"]["amount"],
              ptg: nutrientData["${d["nutrient"]}"]["amount"],
              sub: d["sub"],
              unit: nutrientData["${d["nutrient"]}"]["unit"],
            ))
        .toList(),
  );
}

Widget nutriHeader({calories, servingSize, servings}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Nutrition Facts",
        textAlign: TextAlign.left,
        style: TextStyle(
            color: Colors.black, fontSize: 40.0, fontWeight: FontWeight.w700),
      ),
      Text(
        "Serving Size $servingSize",
        style: TextStyle(
            fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      Text(
        "Servings Per Container $servings",
        style: TextStyle(
            fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.w400),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 5.0,
        color: Colors.black,
      ),
      Text(
        "Ammount Per Serving",
        style: TextStyle(
            fontSize: 10.0, color: Colors.black, fontWeight: FontWeight.w800),
      ),
      Container(
        margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
        height: 1.0,
        color: Colors.black,
      ),
      Row(children: <Widget>[
        Text(
          "Calories",
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w900),
        ),
        Text(
          " $calories",
          style: TextStyle(
              fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w500),
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
  final textSize = 15.0;
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
              "  ${qty}${unit}",
              style: TextStyle(
                  fontSize: textSize,
                  color: Colors.black,
                  fontWeight: textWeight2),
            ),
            Expanded(
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
          "Percent Daily Values are based on a ${caloriesNum} calories diet.",
          style: TextStyle(
              fontSize: 10.0, color: Colors.black, fontWeight: FontWeight.w400),
        )
      ]);
}
