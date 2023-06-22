import 'package:flutter/material.dart';
import 'package:untitled111/regesterr.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
body: Container(
  child: Stack(children: [
    const SizedBox(
      height: 25,
    ),

    IconButton(onPressed: (){
      Navigator.of(context).pop();
    },icon: Icon(Icons.arrow_back,size: 25,)),


    SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60), const Text( 'Complete Profile',
            style: TextStyle( fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
          const Text('Complete your details or continue \n with social media',
            style: TextStyle(
                fontSize: 14,
                color: Colors.grey, ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 25),

          Padding(
            padding: EdgeInsets.only( left: 9 , right: 9),
            child: TextField(

              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  suffixIcon: Icon(Icons.person_outline),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'First Name',
                  hintText: 'Enter your first name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(height: 27),
          Padding(
            padding: EdgeInsets.only( left: 9 , right: 9),
            child: TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: Icon(Icons.person_outline),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Last Name',
                  hintText: 'Enter your last name',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(height: 27),
          Padding(
            padding: EdgeInsets.only( left: 9 , right: 9),
            child: TextField(
              keyboardType: TextInputType.phone,
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: Icon(Icons.smartphone_outlined),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Phone Number',
                  hintText: 'Enter your phone number',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(height: 26),
          Padding(
            padding: EdgeInsets.only( left: 9 , right: 9),
            child: TextField(
              keyboardType: TextInputType.streetAddress,
              style: TextStyle(fontSize: 14),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  suffixIcon: Icon(Icons.location_on_outlined),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  labelText: 'Address',
                  hintText: 'Enter your address',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),


          Container(
            margin: EdgeInsets.only(top: 20),
            child: MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterScreen()),
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
          , SizedBox(
            height: 18,
          ),
          Text('By continue your confirm that you agree \n ' 'with our Term and Condition',
            style: TextStyle(
                color: Colors.grey,
               ),
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
