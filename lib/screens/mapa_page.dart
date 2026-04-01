import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa'),
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: LatLng(-15.78, -47.93),
          initialZoom: 13,
        ),
        children: [
          // 🔹 Camada do mapa 
          TileLayer(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'com.mateus.mapa',
          ),

          // 🔹 Marcador no mapa 
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-15.78, -47.93),
                width: 40,
                height: 40,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
