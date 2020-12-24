import 'package:flutter/cupertino.dart';
import 'package:obatin_app/model/models.dart';

class KeranjangProv extends ChangeNotifier {
  List<KeranjangModel> _listKeranjangProv = [];
  int _totalHarga = 0;

  List<KeranjangModel> get listKeranjangProv => _listKeranjangProv;
  int get totalHarga => _totalHarga;
  set listKeranjangProv(List<KeranjangModel> value) {
    _listKeranjangProv = value;
    notifyListeners();
  }

  set setKeranjangProv(KeranjangModel value) {
    _listKeranjangProv = _listKeranjangProv.map((keranjang) {
      return (keranjang.id == value.id) ? value : keranjang;
    }).toList();
    notifyListeners();
  }

  set totalHarga(int value) {
    if (value <= 0) {
      _totalHarga = 0;
    } else {
      _totalHarga = value;
    }
    notifyListeners();
  }
}
