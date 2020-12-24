import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/model/models.dart';
import 'package:obatin_app/produk/product_page.dart';

class Demam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Demam'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Align(
            alignment: Alignment.topLeft,
            child: ListView(
              children: [
                Center(
                  child: Wrap(
                    spacing: 15,
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
