import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/model/models.dart';
import 'package:obatin_app/produk/product_page.dart';

class Susu extends StatefulWidget {
  @override
  _SusuState createState() => _SusuState();
}

class _SusuState extends State<Susu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Susu"),
      ),
      // floatingActionButton: GestureDetector(
      //   onTap: () {
      //     setState(() {
      //       listProduct.add(ProductModel(
      //           idKategori: "1",
      //           nama: "Paramex",
      //           deskripsi: "Obat Lier",
      //           indikasi: "Sakit",
      //           harga: 500));
      //     });
      //   },
      //   child: Container(
      //     height: 60,
      //     width: 60,
      //     decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      //     child: Center(
      //       child: Icon(
      //         Icons.add,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
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
            )
            // ListView.builder(
            //   itemCount: listProduct.length,
            //   itemBuilder: (context, index) {
            //     return ProductPage(
            //       nama: listProduct[index].nama,
            //       harga: listProduct[index].harga.toString(),
            //     );
            //   },
            // )
            // ListView(
            //   children: [
            //     ProdukSusu(
            //       nama: "Susu Murni Nasional",
            //       harga: "Rp. 3000",
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}
