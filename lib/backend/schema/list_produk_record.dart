import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListProdukRecord extends FirestoreRecord {
  ListProdukRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama_produk" field.
  String? _namaProduk;
  String get namaProduk => _namaProduk ?? '';
  bool hasNamaProduk() => _namaProduk != null;

  // "stok_produk" field.
  int? _stokProduk;
  int get stokProduk => _stokProduk ?? 0;
  bool hasStokProduk() => _stokProduk != null;

  // "harga_produk" field.
  double? _hargaProduk;
  double get hargaProduk => _hargaProduk ?? 0.0;
  bool hasHargaProduk() => _hargaProduk != null;

  // "gambar_produk" field.
  String? _gambarProduk;
  String get gambarProduk => _gambarProduk ?? '';
  bool hasGambarProduk() => _gambarProduk != null;

  // "createby" field.
  String? _createby;
  String get createby => _createby ?? '';
  bool hasCreateby() => _createby != null;

  // "createdate" field.
  DateTime? _createdate;
  DateTime? get createdate => _createdate;
  bool hasCreatedate() => _createdate != null;

  void _initializeFields() {
    _namaProduk = snapshotData['nama_produk'] as String?;
    _stokProduk = castToType<int>(snapshotData['stok_produk']);
    _hargaProduk = castToType<double>(snapshotData['harga_produk']);
    _gambarProduk = snapshotData['gambar_produk'] as String?;
    _createby = snapshotData['createby'] as String?;
    _createdate = snapshotData['createdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_produk');

  static Stream<ListProdukRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListProdukRecord.fromSnapshot(s));

  static Future<ListProdukRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListProdukRecord.fromSnapshot(s));

  static ListProdukRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListProdukRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListProdukRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListProdukRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListProdukRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListProdukRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListProdukRecordData({
  String? namaProduk,
  int? stokProduk,
  double? hargaProduk,
  String? gambarProduk,
  String? createby,
  DateTime? createdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_produk': namaProduk,
      'stok_produk': stokProduk,
      'harga_produk': hargaProduk,
      'gambar_produk': gambarProduk,
      'createby': createby,
      'createdate': createdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListProdukRecordDocumentEquality implements Equality<ListProdukRecord> {
  const ListProdukRecordDocumentEquality();

  @override
  bool equals(ListProdukRecord? e1, ListProdukRecord? e2) {
    return e1?.namaProduk == e2?.namaProduk &&
        e1?.stokProduk == e2?.stokProduk &&
        e1?.hargaProduk == e2?.hargaProduk &&
        e1?.gambarProduk == e2?.gambarProduk &&
        e1?.createby == e2?.createby &&
        e1?.createdate == e2?.createdate;
  }

  @override
  int hash(ListProdukRecord? e) => const ListEquality().hash([
        e?.namaProduk,
        e?.stokProduk,
        e?.hargaProduk,
        e?.gambarProduk,
        e?.createby,
        e?.createdate
      ]);

  @override
  bool isValidKey(Object? o) => o is ListProdukRecord;
}
