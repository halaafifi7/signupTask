import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled111/completeprofile.dart';
import 'forgotpass.dart';


class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();

}

class _WelcomeState extends State<Welcome> {
 bool? isChecked = false ;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(13),
        child: Stack(
          children: [
            SizedBox(
              height: 13,
            ),

            IconButton(onPressed: (){
              Navigator.of(context).pop();
            },icon: Icon(Icons.arrow_back,size: 25,)),

            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 60),

                  Text('Welcome Back',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),

                  const Text(
                    'Sign in with your email and password \n or continue with social media',
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 40),

                  TextField(
                    style: TextStyle(fontSize: 15),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        suffixIcon: Icon(Icons.email_outlined),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        )),
                  ),

                  SizedBox(height: 25),

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

                  SizedBox(height: 25),

                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          activeColor: Colors.deepOrange,
                          onChanged: (newBool) {
                            setState(() {
                              isChecked = newBool ;
                            });
                          },

                        ),
                        Text("Remember me                       " ,
                        style: TextStyle(
                          color: Colors.grey,
                        ),)
                        ,
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context){
    return ForgotPassword();
                            } ,
    ),
    );
      },
                          child: Text(
                            "forget password? " ,
                            style: TextStyle(
                            color: Colors.grey,
                                decoration: TextDecoration.underline
                            ),
                          ),
    ),

                      ],
                    )
                  )
,SizedBox(height: 15),
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
                SizedBox(height: 20),
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
                 , SizedBox(height: 15),

                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Dont have an account? "),

                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context){
                                  return CompleteProfile();
                                } ,
                              ),
                            );
                          },
                          child: Text(
                            "Sign Up " ,
                            style: TextStyle(
                                color: Colors.deepOrange,
                               fontSize: 16
                            ),
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
