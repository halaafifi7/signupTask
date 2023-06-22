import 'package:flutter/material.dart';
import 'package:untitled111/regesterr.dart';
import 'package:untitled111/tokoto.dart';
import 'package:untitled111/welcomeback.dart';
import 'completeprofile.dart';
import 'forgotpass.dart';
import 'regesterr.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(HomeScreen());
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
        debugShowCheckedModeBanner : false,
      home: SplashScreen()
    );
  }
}

