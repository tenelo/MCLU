import 'package:flutter/material.dart';
import 'package:mclu/config/config.dart';
import 'package:mclu/screens/accueil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Config.colors.couleurSecondaire,
          primary: Config.colors.couleurPrimaire,
          secondary: Config.colors.couleurSecondaire,
        ),
        useMaterial3: true,
      ),
      home: const Accueil(),
    );
  }
}
