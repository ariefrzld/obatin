import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/halaman/keranjang/counter.dart';

class ItemKeranjang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 6.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/icons/contoh_obat.png'),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    width: 100.0,
                    child: Text(
                      "Tolak Angin",
                      style: GoogleFonts.varelaRound(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Spacer(),
                        Text(
                          "Rp. 3000",
                          style: GoogleFonts.varelaRound(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Counter(),
                ],
              ),
            ),
          ],
        ),
      );
  }
}