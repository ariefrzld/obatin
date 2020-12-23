import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/layanan/bantuan.dart';
import 'package:obatin_app/halaman/layanan/konfirmasi_pembayaran.dart';
import 'package:obatin_app/halaman/layanan/riwayat_transaksi.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Column(
        children: <Widget>[
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Konfirmasi()));
                },
                child: Container(
                  height: 180.0,
                  width: 120.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Konfirmasi",
                          style: GoogleFonts.varelaRound(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    image: DecorationImage(
                      image: AssetImage('images/icons/layanan/checklist.png'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bantuan()));
                },
                child: Container(
                  height: 180.0,
                  width: 120.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Bantuan",
                          style: GoogleFonts.varelaRound(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    image: DecorationImage(
                      image: AssetImage('images/icons/layanan/help.png'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Riwayat()));
                },
                child: Container(
                  height: 180.0,
                  width: 120.0,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Transaksi",
                          style: GoogleFonts.varelaRound(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    image: DecorationImage(
                      image: AssetImage('images/icons/layanan/history.png'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Row(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
