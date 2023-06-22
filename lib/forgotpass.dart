import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.center,
          margin: EdgeInsets.all(20),

          child: Stack(
            children: [
              SizedBox(height: 15,),

              IconButton(onPressed: (){
                Navigator.of(context).pop();
              },icon: Icon(Icons.arrow_back,size: 25,)),


              Column(
                children: [
                  SizedBox(height: 80,),
                  Text('Forgot Password',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,),
                  SizedBox(height: 2,),
                  Text('Please enter your email and we will '
                      'send \n you a link to return your account',

                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,),

                  SizedBox(height: 60,),

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
                    ),
                  ),
                  SizedBox(height: 80,),

                  MaterialButton(
                    onPressed: (){},
                    height: 50,
                    minWidth: 400,
                    child: Text('Continue',style: TextStyle(
                        fontSize: 18
                    ),),
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?',
                        style: TextStyle(fontSize: 15),),
                      SizedBox(height: 0.4,),
                      TextButton(onPressed: (){},
                        child: Text('Sign Up',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
