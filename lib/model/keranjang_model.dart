part of 'models.dart';

class KeranjangModel {
  final String id;
  final int jumlah;
  final ProductModel produk;
  KeranjangModel({this.id, this.jumlah, this.produk});
}

List<KeranjangModel> listKeranjang = [];
