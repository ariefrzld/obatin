import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/kategori/magh.dart';
import 'package:obatin_app/kategori/demam.dart';
import 'package:obatin_app/kategori/flu.dart';
import 'package:obatin_app/kategori/semua_produk.dart';
import 'package:obatin_app/kategori/diare.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "images/icons/kategori/diarrhea.png", "text": "Diare"},
      {"icon": "images/icons/kategori/fever.png", "text": "Demam"},
      {"icon": "images/icons/kategori/sneezing.png", "text": "Flu"},
      {"icon": "images/icons/kategori/proteins.png", "text": "Magh"},
      {"icon": "images/icons/kategori/discover.png", "text": "Lihat Semua"},
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => Category(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {
                if (categories[index]["icon"] ==
                    "images/icons/kategori/diarrhea.png") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Diare()));
                } else if (categories[index]["icon"] ==
                    "images/icons/kategori/fever.png") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Demam()));
                } else if (categories[index]["icon"] ==
                    "images/icons/kategori/sneezing.png") {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Flu()));
                } else if (categories[index]["icon"] ==
                    "images/icons/kategori/proteins.png") {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Magh()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SemuaProduk()));
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key key,
    @required this.icon,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: 55,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(icon),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              text,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
