import 'package:flutter/material.dart';
import 'package:mclu/config/config.dart';

class InfosParcelles extends StatefulWidget {
  const InfosParcelles({super.key});

  @override
  State<InfosParcelles> createState() => _InfosParcellesState();
}

class _InfosParcellesState extends State<InfosParcelles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Config.colors.couleurPrimaire,
        centerTitle: true,
        title: const Text(
          'ACD / Titre Foncier',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lora',
          ),
        ),
        iconTheme: IconThemeData(
          color: Config.colors.couleurTertiaire,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Config.colors.couleurTertiaire, width: 1),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Informations du Propriétaire',
                    style: TextStyle(
                      color: Config.colors.couleurTertiaire,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                _buildInfoRow('Nom:', 'Tenelo Etienne'),
                _buildInfoRow(
                    'Adresse:', '123 Rue Principale, Quartier, Ville'),
                _buildInfoRow('Numéro de Parcelle:', 'A12345'),
                _buildInfoRow('Superficie:', '500 m²'),
                _buildInfoRow('Date d\'Acquisition:', '01/01/2020'),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Action du bouton
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      'Voir Plus de Détails',
                      style: TextStyle(
                        color: Config.colors.couleurTertiaire,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String valeur) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
                color: Config.colors.couleurPrimaire,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lora'),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              valeur,
              style: const TextStyle(fontFamily: 'Lora'),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
