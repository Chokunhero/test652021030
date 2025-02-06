import 'package:flutter/material.dart';
import 'package:test652021030/pages/producthome.dart';

class Productdetail extends StatefulWidget {
  const Productdetail(
      {super.key,
      required this.name,
      required this.description,
      required this.image});

  final String name;
  final String description;
  final String image;
  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('รายละเอียดสินค้า')),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                  "assets/product-1.jpg"), // TODO: แสดงรูปภาพสินค้า (1pt)
              SizedBox(height: 16),
              Text(
                "กล้วย", // TODO: แสดงชื่อสินค้า (1pt)
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text("กล้วยราคา 50 บาท"), // TODO: แสดงรายละเอียดสินค้า (1pt)
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // TODO: ย้อนกลับไปก่อนหน้า (1pt)
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductHome(),
                      ));
                  ;
                },
                child: Text('กลับไปยังหน้ารายการสินค้า'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
