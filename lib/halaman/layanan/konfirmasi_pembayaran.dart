import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obatin_app/bantuan/constants.dart';

class Konfirmasi extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('Konfirmasi Pembayaran'),
      ),
    );
  }
}