import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OwnerRecord extends FirestoreRecord {
  OwnerRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nama" field.
  String? _nama;
  String get nama => _nama ?? '';
  bool hasNama() => _nama != null;

  // "Alamat" field.
  String? _alamat;
  String get alamat => _alamat ?? '';
  bool hasAlamat() => _alamat != null;

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "Nomor_tlp" field.
  String? _nomorTlp;
  String get nomorTlp => _nomorTlp ?? '';
  bool hasNomorTlp() => _nomorTlp != null;

  void _initializeFields() {
    _nama = snapshotData['Nama'] as String?;
    _alamat = snapshotData['Alamat'] as String?;
    _foto = snapshotData['Foto'] as String?;
    _nomorTlp = snapshotData['Nomor_tlp'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Owner');

  static Stream<OwnerRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OwnerRecord.fromSnapshot(s));

  static Future<OwnerRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OwnerRecord.fromSnapshot(s));

  static OwnerRecord fromSnapshot(DocumentSnapshot snapshot) => OwnerRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OwnerRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OwnerRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OwnerRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OwnerRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOwnerRecordData({
  String? nama,
  String? alamat,
  String? foto,
  String? nomorTlp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nama': nama,
      'Alamat': alamat,
      'Foto': foto,
      'Nomor_tlp': nomorTlp,
    }.withoutNulls,
  );

  return firestoreData;
}

class OwnerRecordDocumentEquality implements Equality<OwnerRecord> {
  const OwnerRecordDocumentEquality();

  @override
  bool equals(OwnerRecord? e1, OwnerRecord? e2) {
    return e1?.nama == e2?.nama &&
        e1?.alamat == e2?.alamat &&
        e1?.foto == e2?.foto &&
        e1?.nomorTlp == e2?.nomorTlp;
  }

  @override
  int hash(OwnerRecord? e) =>
      const ListEquality().hash([e?.nama, e?.alamat, e?.foto, e?.nomorTlp]);

  @override
  bool isValidKey(Object? o) => o is OwnerRecord;
}
