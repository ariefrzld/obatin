import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/model/models.dart';
import 'package:obatin_app/produk/product_page.dart';

class Diare extends StatefulWidget {
  @override
  _DiareState createState() => _DiareState();
}

class _DiareState extends State<Diare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Diare"),
      ),
      body: Container(
        child: Align(
            alignment: Alignment.topLeft,
            child: ListView(
              children: [
                Center(
                  child: Wrap(
                    spacing: 30,
                    runSpacing: 15,
                    children: List.generate(listProduct.length, (index) {
                      return ProductPage(
                        nama: listProduct[index].nama,
                        harga: listProduct[index].harga.toString(),
                        produk: listProduct[index],
                      );
                    }),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
