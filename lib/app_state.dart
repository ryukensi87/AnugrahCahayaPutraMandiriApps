import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _barang = prefs.getString('ff_barang') ?? _barang;
    });
    _safeInit(() {
      _cartnamabarang =
          prefs.getStringList('ff_cartnamabarang') ?? _cartnamabarang;
    });
    _safeInit(() {
      _cargambarbarang =
          prefs.getStringList('ff_cargambarbarang') ?? _cargambarbarang;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _barang = '';
  String get barang => _barang;
  set barang(String value) {
    _barang = value;
    prefs.setString('ff_barang', value);
  }

  List<String> _cartnamabarang = [];
  List<String> get cartnamabarang => _cartnamabarang;
  set cartnamabarang(List<String> value) {
    _cartnamabarang = value;
    prefs.setStringList('ff_cartnamabarang', value);
  }

  void addToCartnamabarang(String value) {
    _cartnamabarang.add(value);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void removeFromCartnamabarang(String value) {
    _cartnamabarang.remove(value);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void removeAtIndexFromCartnamabarang(int index) {
    _cartnamabarang.removeAt(index);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void updateCartnamabarangAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _cartnamabarang[index] = updateFn(_cartnamabarang[index]);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void insertAtIndexInCartnamabarang(int index, String value) {
    _cartnamabarang.insert(index, value);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  List<String> _cargambarbarang = [];
  List<String> get cargambarbarang => _cargambarbarang;
  set cargambarbarang(List<String> value) {
    _cargambarbarang = value;
    prefs.setStringList('ff_cargambarbarang', value);
  }

  void addToCargambarbarang(String value) {
    _cargambarbarang.add(value);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void removeFromCargambarbarang(String value) {
    _cargambarbarang.remove(value);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void removeAtIndexFromCargambarbarang(int index) {
    _cargambarbarang.removeAt(index);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void updateCargambarbarangAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _cargambarbarang[index] = updateFn(_cargambarbarang[index]);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void insertAtIndexInCargambarbarang(int index, String value) {
    _cargambarbarang.insert(index, value);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
