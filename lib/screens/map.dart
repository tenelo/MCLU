/* import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:mclu/config/config.dart';

class Itineraire extends StatefulWidget {
  const Itineraire({super.key});

  @override
  State<Itineraire> createState() => _ItineraireState();
}

class _ItineraireState extends State<Itineraire> {
  GoogleMapController? _controller;
  final Location _location = Location();

  @override
  void initState() {
    super.initState();
    _location.onLocationChanged.listen((LocationData currentLocation) {
      if (_controller != null) {
        _controller!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target:
                  LatLng(currentLocation.latitude!, currentLocation.longitude!),
              zoom: 15.0,
            ),
          ),
        );
      }
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Config.colors.couleurPrimaire,
        centerTitle: true,
        title: const Text(
          'Suivre l\'Itinéraire',
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
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: LatLng(0, 0),
          zoom: 2.0,
        ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
 */