import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
  set barang(String _value) {
    _barang = _value;
    prefs.setString('ff_barang', _value);
  }

  List<String> _cartnamabarang = [];
  List<String> get cartnamabarang => _cartnamabarang;
  set cartnamabarang(List<String> _value) {
    _cartnamabarang = _value;
    prefs.setStringList('ff_cartnamabarang', _value);
  }

  void addToCartnamabarang(String _value) {
    _cartnamabarang.add(_value);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void removeFromCartnamabarang(String _value) {
    _cartnamabarang.remove(_value);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void removeAtIndexFromCartnamabarang(int _index) {
    _cartnamabarang.removeAt(_index);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void updateCartnamabarangAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _cartnamabarang[_index] = updateFn(_cartnamabarang[_index]);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  void insertAtIndexInCartnamabarang(int _index, String _value) {
    _cartnamabarang.insert(_index, _value);
    prefs.setStringList('ff_cartnamabarang', _cartnamabarang);
  }

  List<String> _cargambarbarang = [];
  List<String> get cargambarbarang => _cargambarbarang;
  set cargambarbarang(List<String> _value) {
    _cargambarbarang = _value;
    prefs.setStringList('ff_cargambarbarang', _value);
  }

  void addToCargambarbarang(String _value) {
    _cargambarbarang.add(_value);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void removeFromCargambarbarang(String _value) {
    _cargambarbarang.remove(_value);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void removeAtIndexFromCargambarbarang(int _index) {
    _cargambarbarang.removeAt(_index);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void updateCargambarbarangAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _cargambarbarang[_index] = updateFn(_cargambarbarang[_index]);
    prefs.setStringList('ff_cargambarbarang', _cargambarbarang);
  }

  void insertAtIndexInCargambarbarang(int _index, String _value) {
    _cargambarbarang.insert(_index, _value);
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
