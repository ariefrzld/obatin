import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:obatin_app/bantuan/constants.dart';
import 'package:obatin_app/halaman/keranjang/checkout.dart';
import 'package:obatin_app/model/models.dart';
import 'package:intl/intl.dart';
import 'package:obatin_app/provider/kerajang_provider.dart';
import 'package:provider/provider.dart';

class KeranjangPage extends StatefulWidget {
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
  // int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        appBar: AppBar(
          leading: Icon(Icons.shopping_cart),
          backgroundColor: kPrimaryColor,
          title: Column(
            children: <Widget>[
              Text(
                'Keranjang Belanja',
                style: GoogleFonts.varelaRound(
                    fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        body: Consumer<KeranjangProv>(builder: (_, keranjangProv, __) {
          // keranjangProv.listKeranjangProv
          // .map((e) => keranjangProv.totalHarga += e.produk.harga)
          // .toList();
          return Stack(
            children: [
              ListView.builder(
                itemCount: keranjangProv.listKeranjangProv.length,
                itemBuilder: (_, index) {
                  print(keranjangProv.listKeranjangProv.length);
                  return Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                  image: AssetImage(
                                      'images/icons/contoh_obat.png'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: Get.width - 90,
                          child: ListTile(
                            title: Container(
                              margin: EdgeInsets.only(bottom: 20, left: 10),
                              child: Text(
                                  keranjangProv
                                      .listKeranjangProv[index].produk.nama,
                                  style: GoogleFonts.varelaRound(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600)),
                            ),
                            trailing: Text(
                              NumberFormat.currency(
                                      locale: "id_ID",
                                      decimalDigits: 0,
                                      symbol: "Rp. ")
                                  .format(keranjangProv
                                      .listKeranjangProv[index].produk.harga),
                              style: GoogleFonts.varelaRound(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            subtitle: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        KeranjangModel keranjangModel =
                                            KeranjangModel(
                                                id: keranjangProv
                                                    .listKeranjangProv[index]
                                                    .id,
                                                jumlah: (keranjangProv
                                                            .listKeranjangProv[
                                                                index]
                                                            .jumlah !=
                                                        0)
                                                    ? keranjangProv
                                                            .listKeranjangProv[
                                                                index]
                                                            .jumlah -
                                                        1
                                                    : 0,
                                                produk: keranjangProv
                                                    .listKeranjangProv[index]
                                                    .produk);
                                        keranjangProv.setKeranjangProv =
                                            keranjangModel;
                                        keranjangProv.totalHarga -=
                                            (keranjangProv.totalHarga >= 0)
                                                ? keranjangProv
                                                    .listKeranjangProv[index]
                                                    .produk
                                                    .harga
                                                : 0;
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 14.0),
                                      child: Text(
                                        keranjangProv
                                            .listKeranjangProv[index].jumlah
                                            .toString(),
                                        style: GoogleFonts.varelaRound(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        KeranjangModel keranjangModel =
                                            KeranjangModel(
                                                id: keranjangProv
                                                    .listKeranjangProv[index]
                                                    .id,
                                                jumlah: keranjangProv
                                                        .listKeranjangProv[
                                                            index]
                                                        .jumlah +
                                                    1,
                                                produk: keranjangProv
                                                    .listKeranjangProv[index]
                                                    .produk);
                                        keranjangProv.totalHarga +=
                                            keranjangProv
                                                .listKeranjangProv[index]
                                                .produk
                                                .harga;
                                        keranjangProv.setKeranjangProv =
                                            keranjangModel;
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
                                        setState(() {
                                          keranjangProv.listKeranjangProv
                                              .remove(keranjangProv
                                                  .listKeranjangProv[index]);
                                        });
                                      },
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Container(
                                          width: 23.0,
                                          height: 23.0,
                                          decoration: BoxDecoration(
                                            color: kGreyColor,
                                            borderRadius:
                                                BorderRadius.circular(4.0),
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
                                )),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 90,
                    child: Column(
                      children: <Widget>[
                        Divider(
                          thickness: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Total",
                              style: GoogleFonts.varelaRound(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(symbol: "Rp. ")
                                  .format(keranjangProv.totalHarga),
                              style: GoogleFonts.varelaRound(
                                  fontSize: 20.0, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        Spacer(),
                        MaterialButton(
                          minWidth: 220.0,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Checkout()));
                          },
                          color: kPrimaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Text(
                            "Checkout",
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
                ),
              )
            ],
          );
        }));
  }
}
