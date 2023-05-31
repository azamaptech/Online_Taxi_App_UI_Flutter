import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.satellite,
        onMapCreated: (GoogleMapController controller) {},
        initialCameraPosition: _kGooglePlex,
      ),
    );
  }
}
