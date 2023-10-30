import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListMesinRecord extends FirestoreRecord {
  ListMesinRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama_mesin" field.
  String? _namaMesin;
  String get namaMesin => _namaMesin ?? '';
  bool hasNamaMesin() => _namaMesin != null;

  // "harga_mesin" field.
  double? _hargaMesin;
  double get hargaMesin => _hargaMesin ?? 0.0;
  bool hasHargaMesin() => _hargaMesin != null;

  // "gambar_mesin" field.
  String? _gambarMesin;
  String get gambarMesin => _gambarMesin ?? '';
  bool hasGambarMesin() => _gambarMesin != null;

  void _initializeFields() {
    _namaMesin = snapshotData['nama_mesin'] as String?;
    _hargaMesin = castToType<double>(snapshotData['harga_mesin']);
    _gambarMesin = snapshotData['gambar_mesin'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_mesin');

  static Stream<ListMesinRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListMesinRecord.fromSnapshot(s));

  static Future<ListMesinRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListMesinRecord.fromSnapshot(s));

  static ListMesinRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListMesinRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListMesinRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListMesinRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListMesinRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListMesinRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListMesinRecordData({
  String? namaMesin,
  double? hargaMesin,
  String? gambarMesin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_mesin': namaMesin,
      'harga_mesin': hargaMesin,
      'gambar_mesin': gambarMesin,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListMesinRecordDocumentEquality implements Equality<ListMesinRecord> {
  const ListMesinRecordDocumentEquality();

  @override
  bool equals(ListMesinRecord? e1, ListMesinRecord? e2) {
    return e1?.namaMesin == e2?.namaMesin &&
        e1?.hargaMesin == e2?.hargaMesin &&
        e1?.gambarMesin == e2?.gambarMesin;
  }

  @override
  int hash(ListMesinRecord? e) =>
      const ListEquality().hash([e?.namaMesin, e?.hargaMesin, e?.gambarMesin]);

  @override
  bool isValidKey(Object? o) => o is ListMesinRecord;
}
