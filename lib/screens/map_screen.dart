import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GoogleMap(
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          compassEnabled: true,
          markers: <Marker>{
            // TODO: replace with actual markers
            Marker(
              onTap: () {
                print('Marker tapped');
              },
              markerId: const MarkerId('1'),
              position: const LatLng(49.4875, 8.4649),
              infoWindow: const InfoWindow(
                title: 'Farmer\'s Market',
                snippet: 'Germany',
              ),
            ),
            Marker(
              onTap: () {
                print('Marker tapped');
              },
              markerId: const MarkerId('1'),
              position: const LatLng(49.4875, 8.4750),
              infoWindow: const InfoWindow(
                title: 'Farmer\'s Market',
                snippet: 'Germany',
              ),
            ),
          },
          initialCameraPosition: const CameraPosition(
            target: LatLng(49.4875, 8.4649),
            zoom: 14.4746,
          ),
        )
    );
  }
}