import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';

class DataDiri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text("Data Diri"),
      ),
      body: UbahData(),
    );
  }
}

class UbahData extends StatefulWidget{
  @override
  _UbahDataState createState() => _UbahDataState();
}

class _UbahDataState extends State<UbahData>{
  String groupValue;

  get _controller => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: ListView(
          children: [
            SizedBox(
              height: 15.0,
            ),
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 130.0,
                    height: 130.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 4,
                          color: kWhiteColor,
                      ),
                      boxShadow: [
                        BoxShadow(
                          spreadRadius: 2,
                          blurRadius: 10,
                          color: kBlackColor.withOpacity(0.1),
                          offset: Offset(0,10),
                        ),
                      ],
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/profil/profil.jpg'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: kWhiteColor,
                        ),
                        color: Colors.redAccent,
                      ),
                      child: Icon(
                          Icons.edit,
                          color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            buildTextField("Nama", "Masukkan Nama"),
            Text("Jenis Kelamin",
                style: GoogleFonts.varelaRound(
                    fontSize: 15,
                    color: kGreyColor,
                ),
            ),
            buildRadio(),
            buildTextField("Email", "Masukkan Email"),
            buildTextField("Alamat", "Masukkan Alamat"),
            buildTextFormField("Nomor Handphone", "Masukkan Nomor Handphone"),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlineButton(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "CANCEL",
                    style: GoogleFonts.varelaRound(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2.2,
                        color: kBlackColor,
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.redAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "SIMPAN",
                    style: GoogleFonts.varelaRound(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2.2,
                      color: kWhiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, String placeholder){
    return Padding(
      padding: const EdgeInsets.only(bottom : 20.0),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: GoogleFonts.varelaRound(fontSize: 15, color: kGreyColor),
        ),
      ),
    );
  }

  Widget buildRadio(){
    return Padding(
      padding: const EdgeInsets.only(bottom : 5.0),
      child: Row(
        children: <Widget>[
          Radio(
            value: "Pria",
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                this.groupValue = value;
              });
            },
          ),
          Text("Pria",
            style: GoogleFonts.varelaRound(fontSize: 15,
            fontWeight: FontWeight.w600,
            color: kGreyColor,
            ),
          ),
          SizedBox(width: 30),
          Radio(
            value: "Wanita",
            groupValue: groupValue,
            onChanged: (value) {
              setState(() {
                this.groupValue = value;
              });
            },
          ),
          Text("Wanita",
            style: GoogleFonts.varelaRound(fontSize: 15,
              fontWeight: FontWeight.w600,
              color: kGreyColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTextFormField(String labelText, String placeholder){
    return TextFormField(
        controller: _controller,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          WhitelistingTextInputFormatter.digitsOnly
        ],
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: GoogleFonts.varelaRound(fontSize: 15, color: kGreyColor),
        )
    );
  }
}