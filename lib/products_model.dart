class Products{
  final int id ;

  final String title ;
  final String image ;
  final double price ;

  const Products (
  {
    required this.id,
    required this.title,
    required this.image,
    required this.price,
  }
  );
  factory Products.fromJson(Map<String,dynamic>json){
    return Products(
        id: json['id'],
        title: json['title'],
        image: json['image'],
        price: double.parse(json['price'].toString()));
  }
}