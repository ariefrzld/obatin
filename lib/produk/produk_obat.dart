import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';

class ProdukSusu extends StatelessWidget {
  final String nama;
  final String harga;

  ProdukSusu({this.nama = "", this.harga = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Wrap(
            children: [
              Container(
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(5),
                width: 170,
                height: 240,
                decoration:
                    BoxDecoration(color: kWhiteColor, border: Border.all()),
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
                          child: Text(nama,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Text(harga,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor)),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 160,
                          child: RaisedButton(
                            onPressed: () {},
                            color: kPrimaryColor,
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              Spacer(),
              Container(
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(5),
                width: 170,
                height: 240,
                decoration:
                    BoxDecoration(color: kWhiteColor, border: Border.all()),
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
                          child: Text(nama,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Text(harga,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor)),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 160,
                          child: RaisedButton(
                            onPressed: () {},
                            color: kPrimaryColor,
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(2),
                padding: EdgeInsets.all(5),
                width: 170,
                height: 240,
                decoration:
                    BoxDecoration(color: kWhiteColor, border: Border.all()),
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
                          child: Text(nama,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 5, right: 5),
                          child: Text(harga,
                              style: GoogleFonts.varelaRound(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: kBlackColor)),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 160,
                          child: RaisedButton(
                            onPressed: () {},
                            color: kPrimaryColor,
                            child: Icon(
                              Icons.add_shopping_cart,
                              color: kWhiteColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
