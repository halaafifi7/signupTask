import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:untitled111/products_screen.dart';
import 'package:untitled111/profilepage.dart';

import 'map.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
  child:   Column(

    children: [
      Padding(
  padding: const EdgeInsets.all(20.0),
        // for TextFormField
        child:  Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: [


// for search bar and search icon
              Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[200]
                    ,borderRadius: BorderRadius.circular(15)
                ),
                child:   TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search product",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),

              SizedBox(width: 10,),

// for bell and cart icons

              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey.shade200,
                child: IconButton(icon: SvgPicture.asset("assets/icons/Cart Icon.svg"),
                  onPressed: () {
                  },
                ),
              ),

              SizedBox(width: 10,),

              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey.shade200,
                child: IconButton(
                  icon: SvgPicture.asset("assets/icons/Bell.svg"),
                  onPressed: () {
                  },
                ),
              ),

    ],
  ),
        ),
      SizedBox(height: 12,),

      Container(
        padding: EdgeInsets.symmetric(vertical: 13.0,horizontal: 23.0),
        width: 330,
        height: 80,
        decoration: BoxDecoration(color: Colors.purple[900],borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("A Summer Surprise",style: TextStyle(color: Colors.white),),
            SizedBox(height: 8,),
            Text("Cashback 20%",style: TextStyle(color: Colors.white,fontSize: 26)),
          ],
        ),
      ),

      SizedBox(height: 20),


Padding(
  padding: const EdgeInsets.all(10.0),
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children: [
      Column(
        children: [

          //First icon
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(color:Color( 0xffF7DBD1) ,borderRadius: BorderRadius.circular(15)),
            child: IconButton(  onPressed: (){}, icon: SvgPicture.asset("assets/icons/Flash Icon.svg", height: 29),
            ),
          ),

          SizedBox(height: 5,),
          Text("Flash \n Deal",style: TextStyle(color: Colors.grey[600] , fontSize: 13))
        ],
      ),
      SizedBox(width: 12,),


      //Second icon

      Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(color:Color( 0xffF7DBD1),borderRadius: BorderRadius.circular(15)),
            child: IconButton( onPressed: (){},icon: SvgPicture.asset("assets/icons/Bill Icon.svg",height: 27),
            ),
          ),
          SizedBox(height: 5),
          Text("Bill\n ",style: TextStyle(color: Colors.grey[600] , fontSize: 14))
        ],
      ),
      SizedBox(width: 12),

      // Third icon
      Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(color:Color( 0xffF7DBD1),borderRadius: BorderRadius.circular(15)),
            child: IconButton(  onPressed: (){}, icon: SvgPicture.asset("assets/icons/Game Icon.svg",height: 22,),
            ),
          ),
          SizedBox(height: 5),
          Text("Game\n ",style: TextStyle(color: Colors.grey[600] , fontSize: 14),)
        ],
      ),
      SizedBox(width: 12),

      // Fourth icon
      Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(color:Color( 0xffF7DBD1),borderRadius: BorderRadius.circular(15)),
            child: IconButton(  onPressed: (){},icon: SvgPicture.asset("assets/icons/Gift Icon.svg",height: 27,),
            ),
          ),
          SizedBox(height: 5),
          Text("Daily \n Gift",style: TextStyle(color: Colors.grey[600] , fontSize: 14),)
        ],
      ),
      SizedBox(width: 12),

      //Fifth icon
      Column(
        children: [
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(color:Color( 0xffF7DBD1),borderRadius: BorderRadius.circular(15)),
            child: IconButton( onPressed: (){}, icon: SvgPicture.asset("assets/icons/Discover.svg",height: 38),
            ),
          ),
          SizedBox(height: 5,),
          Text("More\n ",style: TextStyle(color: Colors.grey[600] , fontSize: 14),)
        ],
      ),
    ],
  ),
)
,
      SizedBox(height: 15),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Special for you",style: TextStyle(fontSize: 19  )),
            Text("See More",style: TextStyle( fontSize: 14 , color: Colors.grey),)
          ],
        ),
      ),



      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              GestureDetector( onTap: (){},
                child: Container(
                  width: 230,
                  height: 100,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver),
                      image: AssetImage('assets/images/Image Banner 2.png'),
                      fit: BoxFit.cover,
                    ),),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,  left: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Smartphone",style: TextStyle(color: Colors.white,fontSize: 19),),
                              SizedBox(height: 5,),
                              Text("18 Brands",style: TextStyle(color: Colors.white),)
                            ],
                          )
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 5),


              GestureDetector( onTap: (){},
                child: Container(
                  width: 230,
                  height: 100,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.srcOver),
                      image: AssetImage('assets/images/Image Banner 3.png'),
                      fit: BoxFit.cover,
                    ),
                  ),

                  child: Stack(
                    children: [
                      Positioned(
                          top: 15,  left: 15,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Fashion",style: TextStyle(color: Colors.white,fontSize: 19),),
                              SizedBox(height: 5,),
                              Text("24 Brands",style: TextStyle(color: Colors.white ),)
                            ],
                          ))
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      SizedBox(height: 10),


      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Popular Products",style: TextStyle(fontSize: 19  )),

            GestureDetector(
              onTap: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return ProductsScreen();
                    } ,
                  ),
                );
              },
              child: Text(
                "See More " ,
                style: TextStyle(
                    color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),


      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Column(
                children: [
                  GestureDetector( onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Image Popular Product 1.png'),
                          scale: 4.0,
                        ),
                      ),),
                  ),

                  SizedBox(height: 5,),

                  Text("Wireless Controller \n for PS4" , style: TextStyle(fontSize: 15 ),),

                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("\$64.99",style: TextStyle(fontSize: 19,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                      SizedBox(width: 35),

                      CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg"),
                            color: Colors.red,)
                      )
                    ],
                  )
                ],
              ),

              SizedBox(width: 5),

              Column(
                children: [
                  GestureDetector( onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Image Popular Product 2.png'),
                          scale: 4.0,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 5),

                  Text("Nike Sport White -\n Man Pant" , style: TextStyle(fontSize: 15 )),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("\$ 50.5",style: TextStyle(fontSize: 19,color: Colors.deepOrange , fontWeight: FontWeight.bold),),
                      SizedBox(width: 35),

                      CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg")))
                    ],
                  )
                ],
              ),
              SizedBox(width: 5),

              Column(
                children: [
                  GestureDetector( onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/glap.png'),
                          scale: 4.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text("Gloves Moto - \nPolygon   " , style: TextStyle(fontSize: 15 )),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("\$36.99",style: TextStyle(fontSize: 19,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                      SizedBox(width: 35,),
                      CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg")))
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  GestureDetector( onTap: (){},
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(8.0),
                      decoration:
                      BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/images/Image Popular Product 1.png'),
                          scale: 4.0,
                        ),
                      ),),
                  ),

                  SizedBox(height: 5,),

                  Text("Wireless Controller \n for PS4" , style: TextStyle(fontSize: 15 )),

                  SizedBox(height: 5),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("\$64.99",style: TextStyle(fontSize: 19,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                      SizedBox(width: 35),

                      CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.grey[200],
                          child: IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/Heart Icon_2.svg")))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
SizedBox(height: 15,),

      GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context){
                return Mapp();
              } ,
            ),
          );
        },
        child: Text(
          "Go to the map " ,
          style: TextStyle(
              color: Colors.grey,
              decoration: TextDecoration.underline
          ),
        ),
      ),
],
        ),
      ),


    ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.only(

              topRight: Radius.circular(30),
                topLeft: Radius.circular(30)
            )

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){} , icon:SvgPicture.asset("assets/icons/Shop Icon.svg"),),
                IconButton(onPressed: (){} , icon:SvgPicture.asset("assets/icons/Heart Icon.svg"),),
                IconButton(onPressed: (){} , icon:SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),),



                IconButton(onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return Profile();
                    } ,
                  ),
                );} , icon:SvgPicture.asset("assets/icons/User Icon.svg"),),



              ],
            ),
          ),
    ),

    );

  }
}
