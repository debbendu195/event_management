import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({super.key});

  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  static const googlePlex = LatLng(37.4223, -122.0848);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: SizedBox(
        height: 250,
        child: GoogleMap(
          initialCameraPosition: const CameraPosition(
            target: googlePlex,
            zoom: 13,
          ),
          markers: {
            Marker(
              markerId: MarkerId('sourceLocation',),
              icon: BitmapDescriptor.defaultMarker,
              position: googlePlex
            )
          },
        ),
      ),
    );
  }
}
