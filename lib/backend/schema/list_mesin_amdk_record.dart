import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListMesinAmdkRecord extends FirestoreRecord {
  ListMesinAmdkRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nama_mesin" field.
  String? _namaMesin;
  String get namaMesin => _namaMesin ?? '';
  bool hasNamaMesin() => _namaMesin != null;

  // "gambar_mesin" field.
  String? _gambarMesin;
  String get gambarMesin => _gambarMesin ?? '';
  bool hasGambarMesin() => _gambarMesin != null;

  // "kapasitas_mesin" field.
  String? _kapasitasMesin;
  String get kapasitasMesin => _kapasitasMesin ?? '';
  bool hasKapasitasMesin() => _kapasitasMesin != null;

  // "harga_mesin" field.
  double? _hargaMesin;
  double get hargaMesin => _hargaMesin ?? 0.0;
  bool hasHargaMesin() => _hargaMesin != null;

  void _initializeFields() {
    _namaMesin = snapshotData['nama_mesin'] as String?;
    _gambarMesin = snapshotData['gambar_mesin'] as String?;
    _kapasitasMesin = snapshotData['kapasitas_mesin'] as String?;
    _hargaMesin = castToType<double>(snapshotData['harga_mesin']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list_mesin_amdk');

  static Stream<ListMesinAmdkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListMesinAmdkRecord.fromSnapshot(s));

  static Future<ListMesinAmdkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListMesinAmdkRecord.fromSnapshot(s));

  static ListMesinAmdkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListMesinAmdkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListMesinAmdkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListMesinAmdkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListMesinAmdkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListMesinAmdkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListMesinAmdkRecordData({
  String? namaMesin,
  String? gambarMesin,
  String? kapasitasMesin,
  double? hargaMesin,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama_mesin': namaMesin,
      'gambar_mesin': gambarMesin,
      'kapasitas_mesin': kapasitasMesin,
      'harga_mesin': hargaMesin,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListMesinAmdkRecordDocumentEquality
    implements Equality<ListMesinAmdkRecord> {
  const ListMesinAmdkRecordDocumentEquality();

  @override
  bool equals(ListMesinAmdkRecord? e1, ListMesinAmdkRecord? e2) {
    return e1?.namaMesin == e2?.namaMesin &&
        e1?.gambarMesin == e2?.gambarMesin &&
        e1?.kapasitasMesin == e2?.kapasitasMesin &&
        e1?.hargaMesin == e2?.hargaMesin;
  }

  @override
  int hash(ListMesinAmdkRecord? e) => const ListEquality()
      .hash([e?.namaMesin, e?.gambarMesin, e?.kapasitasMesin, e?.hargaMesin]);

  @override
  bool isValidKey(Object? o) => o is ListMesinAmdkRecord;
}
