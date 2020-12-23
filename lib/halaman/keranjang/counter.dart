import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';

class Counter extends StatefulWidget{
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int counter = 0;

  void _incrementCounter(){
    setState(() {
      counter = counter + 1;
    });
  }

  void _decrementCounter(){
    setState(() {
      counter = counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              if(counter == 0){
                counter = counter;
              }
              else if(counter < 0){
                counter = counter;
              }
              else{
                _decrementCounter();
              }
            },
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: kWhiteColor,
                border: Border.all(),
              ),
              child: Icon(
                Icons.remove,
                color: kBlackColor,
                size: 15.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              "$counter",
              style: GoogleFonts.varelaRound(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _incrementCounter();
            },
            child: Container(
              width: 25.0,
              height: 25.0,
              decoration: BoxDecoration(
                color: kWhiteColor,
                border: Border.all(),
              ),
              child: Icon(
                Icons.add,
                color: kBlackColor,
                size: 15.0,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              counter = counter + 1;
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Container(
                width: 23.0,
                height: 23.0,
                decoration: BoxDecoration(
                  color: kGreyColor,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Icon(
                  Icons.remove_shopping_cart_outlined,
                  color: kWhiteColor,
                  size: 15.0,
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}