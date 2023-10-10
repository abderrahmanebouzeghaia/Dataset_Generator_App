import 'package:flutter/material.dart';

//! Colors
const Color white = Colors.white,
    black = Colors.black,
    whitish = Color.fromRGBO(49, 66, 186, 0.03137254901960784),
    greyish = Color(0xFFD9D9D9),
    grey = Color(0xFF828282),
    mainClr = Color(0xFF4268E2),
    secondClr=Color(0xFF34D3E8),
    red = Colors.red,
    green = Colors.green,
    blue = Colors.blue;

//! Gradients
const LinearGradient blueGradient = LinearGradient(
      begin: Alignment(-0.9, -1),
      end: Alignment(0.4, 1),
      stops: [0, 0.7],
      colors: [
        Color(0xFF34D3E8),
        mainClr,
      ],
    ),
    orangeGradient = LinearGradient(
      begin: Alignment(-0.9, -1),
      end: Alignment(0.4, 1),
      stops: [0, 0.7],
      colors: [
        Color(0xFFFEDF9C),
        Color(0xFFF5305C),
      ],
    ),
    purpleGradient = LinearGradient(
      begin: Alignment(-0.9, -1),
      end: Alignment(0.4, 1),
      stops: [0, 0.7],
      colors: [
        Color(0xFFA774FB),
        Color(0xFF6144F2),
      ],
    ),
    appBarGradient = LinearGradient(
      begin: Alignment(-0.9, -1),
      end: Alignment(0.4, 1),
      stops: [0, 0.7],
      colors: [
        Color(0xFF34D3E8),
        mainClr,
      ],
    );

//Dimensions

late double screenHeight, screenWidth;
double padding = 10.0, margin = 10.0, radius = 20.0;

//Navigation

List<IconData> listOfIcons = [
    Icons.home_filled,
    Icons.dashboard_outlined,
  ];

  List<String> listOfStrings = [
    'Home',
    'Data Collect',
  ];