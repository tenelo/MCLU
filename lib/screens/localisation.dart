import 'package:flutter/material.dart';
import 'package:mclu/config/config.dart';
import 'package:text_scroll/text_scroll.dart';

class Localisation extends StatefulWidget {
  const Localisation({super.key});

  @override
  State<Localisation> createState() => _LocalisationState();
}

class _LocalisationState extends State<Localisation> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;

  void setLoadingState(bool state) {
    setState(() {
      isLoading = state;
    });
  }

  Future<void> _handleSubmit() async {
    if (_formKey.currentState!.validate()) {
      setLoadingState(true);

      // Simuler une opération asynchrone, comme une requête réseau
      await Future.delayed(const Duration(seconds: 2));

      setLoadingState(false);

      // Action après l'opération asynchrone
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Vérification terminée')),
      );
    }
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
          title: const TextScroll(
            '   MINISTERE DE LA CONSTRUCTION DU LOGEMENT DE L\'ASSAINISSEMENT ET DE L\'URBANISME',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.w300,
              fontSize: 16,
              fontFamily: 'Lora',
            ),
            intervalSpaces: 20,
            delayBefore: Duration(milliseconds: 4000),
            velocity: Velocity(pixelsPerSecond: Offset(45, 0)),
          ),
          backgroundColor: Config.colors.couleurPrimaire,
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: Config.colors.couleurPrimaire,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(22)),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 90,
                          width: 180,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/mclu_logo.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        const Center(
                          child: Text('LOCALISATION DU TERRAIN',
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Lora')),
                        ),
                        Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Saisissez l\'information',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez saisir l\'information';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 30),
                            SizedBox(
                              width: double.infinity,
                              child: isLoading
                                  ? const CircularProgressIndicator()
                                  : ElevatedButton(
                                      onPressed: _handleSubmit,
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      child: const Text('Vérifier'),
                                    ),
                            ),
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
