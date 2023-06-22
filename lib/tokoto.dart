import 'package:flutter/material.dart';
import 'package:untitled111/welcomeback.dart';
import 'welcomeback.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            alignment: AlignmentDirectional.center,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'TOKOTO',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Welcome to TOKOTO, Let\'s shop!',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 43,
                ),


            Column(
              children: [
                Container(
                  height: 200,
                  child:     Container(
                    child: PageView(
                      children: [
                        Image.asset("assets/images/splash_1.png" ) ,
                        Image.asset("assets/images/splash_2.png" ),
                        Image.asset("assets/images/splash_3.png" )
                      ],
                    ),
                  ),
                )
              ],
            )
,
                SizedBox(
                  height: 20,
                ),


                Container(
                  margin: EdgeInsets.only(top: 130),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Welcome()),
                      );
                    },
                    height: 50,
                    minWidth: 320,
                    child: Text('Continue',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}