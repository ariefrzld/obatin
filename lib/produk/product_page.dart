import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:intl/intl.dart';
import 'package:obatin_app/model/models.dart';
import 'package:obatin_app/provider/kerajang_provider.dart';
import 'package:provider/provider.dart';

class ProductPage extends StatefulWidget {
  final String nama;
  final String harga;
  final ProductModel produk;

  ProductPage({this.nama = "", this.harga = "", this.produk});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      width: 170,
      height: 240,
      decoration: BoxDecoration(color: kWhiteColor, border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 170,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage('images/icons/contoh_obat.png'),
                  ),
                ),
              ),
              SizedBox(height: 7),
              Container(
                margin: EdgeInsets.all(5),
                child: Text(widget.nama,
                    style: GoogleFonts.varelaRound(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: kBlackColor)),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                    NumberFormat.currency(
                            locale: "id_ID", decimalDigits: 0, symbol: "Rp. ")
                        .format(int.parse(widget.harga)),
                    style: GoogleFonts.varelaRound(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: kBlackColor)),
              ),
            ],
          ),
          Consumer<KeranjangProv>(
            builder: (_, listKeranjangProv, __) => Column(
              children: <Widget>[
                SizedBox(
                  width: 160,
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        listKeranjangProv.listKeranjangProv.add(KeranjangModel(
                          id: DateTime.now().toString(),
                          jumlah: 0,
                          produk: widget.produk,
                        ));
                      });
                    },
                    color: kPrimaryColor,
                    child: Icon(
                      Icons.add_shopping_cart,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
