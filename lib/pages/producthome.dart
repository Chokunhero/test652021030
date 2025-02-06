import 'package:flutter/material.dart';
import 'package:test652021030/pages/productcart.dart';
import 'package:test652021030/pages/productdetail.dart';
// import 'package:mobile_practice/pages/product_cart.dart';
// import 'package:mobile_practice/pages/product_detail.dart';

class ProductHome extends StatefulWidget {
  const ProductHome({super.key});

  @override
  State<ProductHome> createState() => _ProductHomeState();
}

class _ProductHomeState extends State<ProductHome> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'กล้วย',
      'price': 50,
      'description': 'รายละเอียดสินค้า 1',
      'image': 'images/product-1.jpg'
    },
    {
      'name': 'มังคุด',
      'price': 100,
      'description': 'รายละเอียดสินค้า 2',
      'image': 'images/product-2.jpg'
    },
    {
      'name': 'ลิ้นจี่',
      'price': 150,
      'description': 'รายละเอียดสินค้า 3',
      'image': 'images/product-3.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('รายการสินค้า')),
      body: ListView(
        children: products.map((product) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                  "assets/product-1.jpg"), // TODO: แสดงรูปภาพสินค้า (1pt)
              title: Text("กล้วย"), // TODO: แสดงชื่อสินค้า (1pt)
              subtitle: Text("50บาท"), // TODO: แสดงราคาสินค้า (1pt)
              trailing: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductCart(
                          product: {},
                        ),
                      ));
                },
                child: Text('เพิ่มในตะกร้า'),
              ),
              onTap: () {
                // TODO: เปิดไปยังหน้า ProductDetail (1.5pt)
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Productdetail(
                        name: '',
                        image: '',
                        description: '',
                      ),
                    ));
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
