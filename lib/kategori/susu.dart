import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/produk/produk_obat.dart';

class Susu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Susu"),
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        child: Align(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              ProdukSusu(
                nama: "Susu Murni Nasional",
                harga: "Rp. 3000",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
