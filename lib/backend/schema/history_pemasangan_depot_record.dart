import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistoryPemasanganDepotRecord extends FirestoreRecord {
  HistoryPemasanganDepotRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "namapemasang" field.
  String? _namapemasang;
  String get namapemasang => _namapemasang ?? '';
  bool hasNamapemasang() => _namapemasang != null;

  // "alamatpemasang" field.
  String? _alamatpemasang;
  String get alamatpemasang => _alamatpemasang ?? '';
  bool hasAlamatpemasang() => _alamatpemasang != null;

  // "tanggalpemasangan" field.
  DateTime? _tanggalpemasangan;
  DateTime? get tanggalpemasangan => _tanggalpemasangan;
  bool hasTanggalpemasangan() => _tanggalpemasangan != null;

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

  void _initializeFields() {
    _namapemasang = snapshotData['namapemasang'] as String?;
    _alamatpemasang = snapshotData['alamatpemasang'] as String?;
    _tanggalpemasangan = snapshotData['tanggalpemasangan'] as DateTime?;
    _dokumen1 = snapshotData['dokumen1'] as String?;
    _dokumen2 = snapshotData['dokumen2'] as String?;
    _dokumen3 = snapshotData['dokumen3'] as String?;
    _dokumen4 = snapshotData['dokumen4'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('HistoryPemasanganDepot');

  static Stream<HistoryPemasanganDepotRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map((s) => HistoryPemasanganDepotRecord.fromSnapshot(s));

  static Future<HistoryPemasanganDepotRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistoryPemasanganDepotRecord.fromSnapshot(s));

  static HistoryPemasanganDepotRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistoryPemasanganDepotRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistoryPemasanganDepotRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistoryPemasanganDepotRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistoryPemasanganDepotRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistoryPemasanganDepotRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistoryPemasanganDepotRecordData({
  String? namapemasang,
  String? alamatpemasang,
  DateTime? tanggalpemasangan,
  String? dokumen1,
  String? dokumen2,
  String? dokumen3,
  String? dokumen4,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'namapemasang': namapemasang,
      'alamatpemasang': alamatpemasang,
      'tanggalpemasangan': tanggalpemasangan,
      'dokumen1': dokumen1,
      'dokumen2': dokumen2,
      'dokumen3': dokumen3,
      'dokumen4': dokumen4,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistoryPemasanganDepotRecordDocumentEquality
    implements Equality<HistoryPemasanganDepotRecord> {
  const HistoryPemasanganDepotRecordDocumentEquality();

  @override
  bool equals(
      HistoryPemasanganDepotRecord? e1, HistoryPemasanganDepotRecord? e2) {
    return e1?.namapemasang == e2?.namapemasang &&
        e1?.alamatpemasang == e2?.alamatpemasang &&
        e1?.tanggalpemasangan == e2?.tanggalpemasangan &&
        e1?.dokumen1 == e2?.dokumen1 &&
        e1?.dokumen2 == e2?.dokumen2 &&
        e1?.dokumen3 == e2?.dokumen3 &&
        e1?.dokumen4 == e2?.dokumen4;
  }

  @override
  int hash(HistoryPemasanganDepotRecord? e) => const ListEquality().hash([
        e?.namapemasang,
        e?.alamatpemasang,
        e?.tanggalpemasangan,
        e?.dokumen1,
        e?.dokumen2,
        e?.dokumen3,
        e?.dokumen4
      ]);

  @override
  bool isValidKey(Object? o) => o is HistoryPemasanganDepotRecord;
}
