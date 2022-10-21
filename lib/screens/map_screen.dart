import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(53.532611, 49.314047),
      zoom: 12.0,
    );

    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      extendBodyBehindAppBar: true,
      body: const GoogleMap(initialCameraPosition: _kGooglePlex),
    );
  }
}
