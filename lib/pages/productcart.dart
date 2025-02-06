import 'package:flutter/material.dart';

class ProductCart extends StatefulWidget {
  const ProductCart({super.key, required this.product});

  final Map<String, dynamic> product;

  @override
  State<ProductCart> createState() => _ProductCartState();
}

class _ProductCartState extends State<ProductCart> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController location = TextEditingController();
  List<String> payment = ['เงินสด', 'บัตรเครดิต', 'โอนเงิน'];
  String? paymentMethod;
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ตะกร้าสินค้า')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text("กล้วย"), // TODO: แสดงชื่อสินค้า  (0.5pt)
              Text("ราคา 50 บาท"), // TODO: แสดงราคาสินค้า (0.5pt)
              SizedBox(height: 16),

              TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "กรุณาใส่ชื่อ";
                  }
                  return null;
                },
                controller: name,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "ชื่อ",
                ),
                // TODO: ช่องกรอกชื่อผู้รับ พร้อม Validate (2pt)
                // TODO: ช่องกรอกที่อยู่ พร้อม Validate (2pt)
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "กรุณาใส่ที่อยู่";
                  }
                  return null;
                },
                controller: location,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "ที่อยู่",
                ),
                // TODO: ช่องกรอกชื่อผู้รับ พร้อม Validate (2pt)
                // TODO: ช่องกรอกที่อยู่ พร้อม Validate (2pt)
              ),
              SizedBox(height: 16),
              Text('กรุณาเลือกวิธีชำระเงิน'),
              DropdownButton<String>(
                value: paymentMethod,
                items: payment
                    .map((payment) => DropdownMenuItem(
                          value: payment,
                          child: Text(payment),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    paymentMethod = value;
                  });
                },
              ),
              SizedBox(height: 16),
              CheckboxListTile(
                title: Text("ยอมรับเงื่่อนไขการใช้งาน"),
                value: isTermsAccepted,
                onChanged: (value) {
                  setState(() {
                    isTermsAccepted = value!;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    print(name.text);
                    print(location.text);
                  }
                },
                child: Text('ยืนยันการสั่งซื้อ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
