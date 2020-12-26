import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/provider/kerajang_provider.dart';
import 'package:provider/provider.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutPage createState() => _CheckoutPage();
}

class _CheckoutPage extends State<Checkout> {
  String _pembayaranVal;
  String _pengirimanVal;
  List _pembayaran = ['BRI', 'BNI', 'Mandiri', 'BCA', 'Dana', 'OVO'];
  List _pengiriman = ['Ambil Di Apotek', 'Dikirim Ke Rumah'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: Text('Checkout'),
        ),
        body: Consumer<KeranjangProv>(builder: (_, keranjangProv, __) {
          return Center(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Metode Pengiriman",
                          style: GoogleFonts.varelaRound(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        DropdownButton(
                          hint: Text(
                            "Pilih Metode Pengiriman",
                            style: GoogleFonts.varelaRound(fontSize: 15),
                          ),
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 35,
                          value: _pengirimanVal,
                          style: GoogleFonts.varelaRound(
                              color: kBlackColor, fontSize: 15),
                          onChanged: (value) {
                            setState(() {
                              _pengirimanVal = value;
                            });
                          },
                          items: _pengiriman.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Metode Pembayaran",
                          style: GoogleFonts.varelaRound(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        DropdownButton(
                          hint: Text(
                            "Pilih Metode Pembayaran",
                            style: GoogleFonts.varelaRound(fontSize: 15),
                          ),
                          elevation: 5,
                          icon: Icon(Icons.arrow_drop_down),
                          iconSize: 35,
                          value: _pembayaranVal,
                          style: GoogleFonts.varelaRound(
                              color: kBlackColor, fontSize: 15),
                          onChanged: (value) {
                            setState(() {
                              _pembayaranVal = value;
                            });
                          },
                          items: _pembayaran.map((value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    minWidth: 220.0,
                    onPressed: () {},
                    color: kPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Text(
                      "Buat Pesanan",
                      style: GoogleFonts.varelaRound(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }
}
