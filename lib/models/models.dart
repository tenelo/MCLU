import 'package:flutter/material.dart';
import 'package:mclu/config/config.dart';

Widget carteALettre(String lettre) {
  return Card(
    color: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(color: Config.colors.couleurTertiaire),
    ),
    child: SizedBox(
      height: 40,
      width: 40,
      child: Center(
        child: Text(
          lettre,
          style: TextStyle(
            // fontFamily: 'Lobster',
            fontSize: 16,
            color: Config.colors.couleurSecondaire,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
