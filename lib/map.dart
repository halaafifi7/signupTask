import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map.dart';


class Mapp extends StatefulWidget {
  const Mapp({super.key});

  @override
  State<Mapp> createState() => _MappState();
}

class _MappState extends State<Mapp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: GoogleMap(
              initialCameraPosition :CameraPosition(
                target: LatLng(37.43296265331129, -122.08832357078792),
              )
          ),
        ));
  }
}
