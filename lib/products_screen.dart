import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled111/products_model.dart';
import 'package:untitled111/taskkk.dart';
import 'package:http/http.dart' as http;
import 'package:untitled111/taskkk.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  late Future<List<Products>>futureProducts;
  Future<List<Products>>fetchProducts() async {
    var url=Uri.parse('https://fakestoreapi.com/products/');

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        var decodedData = json.decode(response.body) as List<dynamic>;
        List<Products> products =
        decodedData.map((json) => Products.fromJson(json)).toList();
        return products;
      } else {
        throw Exception('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
@override
  void initState(){
    super.initState();
    futureProducts = fetchProducts();
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        title: Text(
          'All Products',
          style: TextStyle(color: Colors.black),
        ),
      ),


          body: FutureBuilder(
            future: futureProducts,
            builder: (context, snapshot){
              if(snapshot.hasData){
                var data=snapshot.data;
                return ListView.builder(
                    itemCount: data!.length,
                itemBuilder: (context,index) =>Column(
                  children: [
                    ListTile(
                      leading: Container(
                        width: 50,
                        child: Image.network(data[index].image),
                      ),
                      title: Text(data[index].title),
                      subtitle: Text(data[index].price.toString()),
                    ),
                    Divider()
                  ],
                ) ,
                );
              } else if(snapshot.hasError){
                return Text(snapshot.error.toString());
              }
              return Center(
                  child: CircularProgressIndicator());
            },
          ),
    ));
  }
}
