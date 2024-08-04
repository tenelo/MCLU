import 'package:flutter/material.dart';
import 'package:mclu/config/config.dart';
import 'package:mclu/models/models.dart';
import 'package:mclu/screens/localisation.dart';
import 'package:mclu/screens/verificationDocuments.dart';
import 'package:text_scroll/text_scroll.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  bool isLoading = false;
  void setLoadingState(bool state) {
    setState(() {
      isLoading = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          leading: Image.asset('assets/images/armoirie.png'),
          elevation: 1.0,
          shadowColor: Colors.white,
          centerTitle: true,
          title: const Flexible(
            child: TextScroll(
              '   MINISTERE DE LA CONSTRUCTION DU LOGEMENT DE L\'ASSAINISSEMENT ET DE L\'URBANISME',
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                  fontFamily: 'Lora'),
              intervalSpaces: 20,
              delayBefore: Durations.long4,
              velocity: Velocity(pixelsPerSecond: Offset(45, 0)),
            ),
          ),
          backgroundColor: Config.colors.couleurPrimaire,
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Config.colors.couleurPrimaire,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  carteALettre('M'),
                  carteALettre('C'),
                  carteALettre('L'),
                  carteALettre('U')
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mclu_logo.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                        children: [
                          verifierDedocuments(context, setLoadingState),
                          localisation(context, setLoadingState),
                          documents(context, setLoadingState),
                          informations(context, setLoadingState),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget verifierDedocuments(BuildContext ctx, Function setLoadingState) {
  return GestureDetector(
    onTap: () async {
      setLoadingState(true);
      Navigator.push(
        ctx,
        MaterialPageRoute(builder: (context) => const VerificationDoc()),
      );
      setLoadingState(false);
    },
    child: Card(
      shadowColor: Config.colors.couleurTertiaire,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: Icon(
                color: Config.colors.couleurTertiaire,
                Icons.check_box_outlined,
                size: 60,
              ),
            ),
            const Text(
              "VERIFICATION",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lora'),
            )
          ],
        ),
      ),
    ),
  );
}

Widget localisation(BuildContext ctx, Function setLoadingState) {
  return GestureDetector(
    onTap: () async {
      setLoadingState(true);
      Navigator.push(
        ctx,
        MaterialPageRoute(builder: (context) => const Localisation()),
      );
      setLoadingState(false);
    },
    child: Card(
      shadowColor: Config.colors.couleurTertiaire,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: Icon(
                color: Config.colors.couleurTertiaire,
                Icons.location_on_outlined,
                size: 60,
              ),
            ),
            const Text(
              "LOCALISATION",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lora'),
            )
          ],
        ),
      ),
    ),
  );
}

Widget informations(BuildContext ctx, Function setLoadingState) {
  return GestureDetector(
    onTap: () async {
      setLoadingState(true);
      setLoadingState(false);
    },
    child: Card(
      shadowColor: Config.colors.couleurTertiaire,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: Icon(
                color: Config.colors.couleurTertiaire,
                Icons.info_outlined,
                size: 60,
              ),
            ),
            const Text(
              "INFORMATIONS",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lora'),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget documents(BuildContext ctx, Function setLoadingState) {
  return GestureDetector(
    onTap: () async {
      setLoadingState(true);
      setLoadingState(false);
    },
    child: Card(
      shadowColor: Config.colors.couleurTertiaire,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: Icon(
                color: Config.colors.couleurTertiaire,
                Icons.folder_copy_outlined,
                size: 60,
              ),
            ),
            const Text(
              "DOCUMENTS",
              style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Lora'),
            ),
          ],
        ),
      ),
    ),
  );
}
