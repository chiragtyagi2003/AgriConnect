import 'package:flutter/material.dart';
import 'package:agriconnect/productCard.dart';

class ProductWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;
  final String desc;

  const ProductWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.desc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 160,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 4,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProductCard(
                    imageUrl: this.imageUrl,
                    price: this.price,
                    description: this.desc,
                  name: this.name,
                )));
              },
              child: Container(
                width: double.infinity,
                height: double.infinity,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 4),
                Text(
                  price,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
