import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/profil/data_diri.dart';
import 'package:obatin_app/halaman/profil/ubah_password.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DataDiri()));
              },
              child: ListTile(
                title: Text("Data Diri", style: GoogleFonts.varelaRound(fontSize: 20.0, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_right, size: 40.0, color: kBlackColor,),
              ),
            ),
            Divider(color: kBlackColor),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => UbahPassword()));
              },
              child: ListTile(
                title: Text("Ubah Password", style: GoogleFonts.varelaRound(fontSize: 20.0, fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.keyboard_arrow_right, size: 40.0, color: kBlackColor,),
              ),
            ),
            Divider(color: kBlackColor),
          ],
        ),
      ),
    );
  }
}