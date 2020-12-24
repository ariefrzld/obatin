part of 'models.dart';

class ProductModel {
  final String id, idKategori, nama, deskripsi, indikasi;
  final int harga;
  ProductModel(
      {this.id,
      @required this.idKategori,
      @required this.nama,
      @required this.deskripsi,
      @required this.indikasi,
      @required this.harga});
}

List<ProductModel> listProduct = [
  ProductModel(
      id: "1",
      idKategori: "1",
      nama: "Tolak Angin",
      deskripsi: "Menolak Angin",
      indikasi: "Masuk Angin",
      harga: 2000),
  ProductModel(
      id: "2",
      idKategori: "2",
      nama: "Susu",
      deskripsi: "Susu Sapi",
      indikasi: "Haus",
      harga: 10000),
  ProductModel(
      id: "3",
      idKategori: "3",
      nama: "OBH",
      deskripsi: "Obat Batuk",
      indikasi: "Batuk",
      harga: 4000),
  ProductModel(
      id: "4",
      idKategori: "4",
      nama: "Oskadon",
      deskripsi: "Obat Sakit",
      indikasi: "Sakit Kepala",
      harga: 1000),
  ProductModel(
      id: "5",
      idKategori: "5",
      nama: "Vitamin C",
      deskripsi: "Menjaga anti body",
      indikasi: "Covid",
      harga: 1000),
];
