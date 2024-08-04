import 'package:flutter/material.dart';

class Config {
  // on met les propriétés à static pour pouvoir y avoir accès
  //à distance sans avoir besoin d'instancier la classe
  static final colors = _Color();
}

class _Color {
  final couleurPrimaire = const Color(0xFF225214);
  final couleurSecondaire = const Color(0xFFFFA500);

  //final couleurSecondaire = const Color(0xFFf16823);
  final couleurTertiaire = const Color(0xFF3ab44c);
  //final vertA = const Color(0xff128760);
  //final bleuB = const Color.fromARGB(255, 29, 60, 106);
}

/*
double calculeTailleEcran() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return sqrt(pow(screenWidth, 2) + pow(screenHeight, 2)) / 160.0;
    // RECUPERATION
    // int arrondi = calculateDiagonalInches().round();
  }

*/

