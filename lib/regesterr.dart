import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            margin: EdgeInsets.all(13),
            child: Stack(children: [
              SizedBox(
                height: 13,
              ),

              IconButton(onPressed: (){
                Navigator.of(context).pop();
              },icon: Icon(Icons.arrow_back,size: 25,)),

              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60),
                    Text(
                      'Register Account',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),

                    const Text(
                      'Complete your details or continue \n with social media',
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 40),

                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.email_outlined),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 26),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(height: 26),
                    TextField(
                      style: TextStyle(fontSize: 16),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          suffixIcon: Icon(Icons.lock_outline),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Confirm Password',
                          hintText: 'Re-enter your password',
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      height: 25,                    ),

                    MaterialButton(
                      onPressed: () {},
                      height: 50,
                      minWidth: 400,
                      child: Text('Continue'),
                      textColor: Colors.white,
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  Container(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/google-icon.svg") ) ,
                         IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/facebook-2.svg") ) ,
                         IconButton(onPressed: (){}, icon:SvgPicture.asset("assets/icons/twitter.svg") ) ,
                       ],
                               ),
                                  )

                  ,  SizedBox(
                      height: 18,
                    ),
                    Text(
                      'By continuing your confirm that you agree',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}