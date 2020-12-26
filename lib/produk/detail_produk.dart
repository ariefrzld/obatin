import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/chat.dart';
import 'package:obatin_app/provider/kerajang_provider.dart';
import 'package:provider/provider.dart';
import 'package:obatin_app/model/models.dart';

class DetailProduk extends StatefulWidget {
  final String nama;
  final String harga;
  final ProductModel produk;

  const DetailProduk({
    Key key,
    this.nama = "",
    this.harga = "",
    this.produk,
  }) : super(key: key);

  @override
  _DetailProdukState createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Detail Produk"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.asset('images/TolakAngin.png'),
                SizedBox(height: 5),
                Divider(thickness: 3),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    "RP. 2000",
                    style: GoogleFonts.varelaRound(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.redAccent),
                  ),
                ),
                Divider(thickness: 3),
                Container(
                  child: Row(
                    children: <Widget>[
                      Image.asset('images/apotek.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Apotek Rahmayani',
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_outlined,
                                    size: 15,
                                  ),
                                  Text(
                                    'Kec. Lohbener',
                                    style: GoogleFonts.varelaRound(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 80),
                        child: OutlineButton(
                          color: kWhiteColor,
                          onPressed: () {},
                          child: Text(
                            "Kunjungi Toko",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 3,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Informasi Produk',
                          style: GoogleFonts.varelaRound(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Deskripsi',
                          style: GoogleFonts.varelaRound(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.redAccent),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Ini Deskripsi',
                          style: GoogleFonts.varelaRound(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: new Container(
        color: kPrimaryColor,
        padding: EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                },
                icon: Icon(Icons.chat, color: kWhiteColor),
                label: Text(
                  'Tanya Produk',
                  style: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart, color: kWhiteColor),
                label: Text(
                  'Masukkan Keranjang',
                  style: GoogleFonts.varelaRound(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
