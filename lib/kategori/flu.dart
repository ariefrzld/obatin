import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/produk/produk_obat.dart';

class Flu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Flu"),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              ProdukSusu(
                nama: "Ultra Flu",
                harga: "Rp. 3000",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
