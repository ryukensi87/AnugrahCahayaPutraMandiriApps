import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JasaPemasanganRecord extends FirestoreRecord {
  JasaPemasanganRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "alamatservice" field.
  String? _alamatservice;
  String get alamatservice => _alamatservice ?? '';
  bool hasAlamatservice() => _alamatservice != null;

  // "tanggalservice" field.
  DateTime? _tanggalservice;
  DateTime? get tanggalservice => _tanggalservice;
  bool hasTanggalservice() => _tanggalservice != null;

  // "dokumen1" field.
  String? _dokumen1;
  String get dokumen1 => _dokumen1 ?? '';
  bool hasDokumen1() => _dokumen1 != null;

  // "dokumen2" field.
  String? _dokumen2;
  String get dokumen2 => _dokumen2 ?? '';
  bool hasDokumen2() => _dokumen2 != null;

  // "dokumen3" field.
  String? _dokumen3;
  String get dokumen3 => _dokumen3 ?? '';
  bool hasDokumen3() => _dokumen3 != null;

  // "dokumen4" field.
  String? _dokumen4;
  String get dokumen4 => _dokumen4 ?? '';
  bool hasDokumen4() => _dokumen4 != null;

  // "noid" field.
  int? _noid;
  int get noid => _noid ?? 0;
  bool hasNoid() => _noid != null;

  void _initializeFields() {
    _nama = snapshotData['nama'] as String?;
    _alamatservice = snapshotData['alamatservice'] as String?;
    _tanggalservice = snapshotData['tanggalservice'] as DateTime?;
    _dokumen1 = snapshotData['dokumen1'] as String?;
    _dokumen2 = snapshotData['dokumen2'] as String?;
    _dokumen3 = snapshotData['dokumen3'] as String?;
    _dokumen4 = snapshotData['dokumen4'] as String?;
    _noid = castToType<int>(snapshotData['noid']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('JasaPemasangan');

  static Stream<JasaPemasanganRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JasaPemasanganRecord.fromSnapshot(s));

  static Future<JasaPemasanganRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JasaPemasanganRecord.fromSnapshot(s));

  static JasaPemasanganRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JasaPemasanganRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JasaPemasanganRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JasaPemasanganRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JasaPemasanganRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JasaPemasanganRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJasaPemasanganRecordData({
  String? nama,
  String? alamatservice,
  DateTime? tanggalservice,
  String? dokumen1,
  String? dokumen2,
  String? dokumen3,
  String? dokumen4,
  int? noid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nama': nama,
      'alamatservice': alamatservice,
      'tanggalservice': tanggalservice,
      'dokumen1': dokumen1,
      'dokumen2': dokumen2,
      'dokumen3': dokumen3,
      'dokumen4': dokumen4,
      'noid': noid,
    }.withoutNulls,
  );

  return firestoreData;
}

class JasaPemasanganRecordDocumentEquality
    implements Equality<JasaPemasanganRecord> {
  const JasaPemasanganRecordDocumentEquality();

  @override
  bool equals(JasaPemasanganRecord? e1, JasaPemasanganRecord? e2) {
    return e1?.nama == e2?.nama &&
        e1?.alamatservice == e2?.alamatservice &&
        e1?.tanggalservice == e2?.tanggalservice &&
        e1?.dokumen1 == e2?.dokumen1 &&
        e1?.dokumen2 == e2?.dokumen2 &&
        e1?.dokumen3 == e2?.dokumen3 &&
        e1?.dokumen4 == e2?.dokumen4 &&
        e1?.noid == e2?.noid;
  }

  @override
  int hash(JasaPemasanganRecord? e) => const ListEquality().hash([
        e?.nama,
        e?.alamatservice,
        e?.tanggalservice,
        e?.dokumen1,
        e?.dokumen2,
        e?.dokumen3,
        e?.dokumen4,
        e?.noid
      ]);

  @override
  bool isValidKey(Object? o) => o is JasaPemasanganRecord;
}
