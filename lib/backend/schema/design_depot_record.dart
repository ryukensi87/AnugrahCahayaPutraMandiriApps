import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DesignDepotRecord extends FirestoreRecord {
  DesignDepotRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "namadesign" field.
  String? _namadesign;
  String get namadesign => _namadesign ?? '';
  bool hasNamadesign() => _namadesign != null;

  // "gambar" field.
  String? _gambar;
  String get gambar => _gambar ?? '';
  bool hasGambar() => _gambar != null;

  // "createdate" field.
  DateTime? _createdate;
  DateTime? get createdate => _createdate;
  bool hasCreatedate() => _createdate != null;

  void _initializeFields() {
    _namadesign = snapshotData['namadesign'] as String?;
    _gambar = snapshotData['gambar'] as String?;
    _createdate = snapshotData['createdate'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DesignDepot');

  static Stream<DesignDepotRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DesignDepotRecord.fromSnapshot(s));

  static Future<DesignDepotRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DesignDepotRecord.fromSnapshot(s));

  static DesignDepotRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DesignDepotRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DesignDepotRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DesignDepotRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DesignDepotRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DesignDepotRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDesignDepotRecordData({
  String? namadesign,
  String? gambar,
  DateTime? createdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'namadesign': namadesign,
      'gambar': gambar,
      'createdate': createdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class DesignDepotRecordDocumentEquality implements Equality<DesignDepotRecord> {
  const DesignDepotRecordDocumentEquality();

  @override
  bool equals(DesignDepotRecord? e1, DesignDepotRecord? e2) {
    return e1?.namadesign == e2?.namadesign &&
        e1?.gambar == e2?.gambar &&
        e1?.createdate == e2?.createdate;
  }

  @override
  int hash(DesignDepotRecord? e) =>
      const ListEquality().hash([e?.namadesign, e?.gambar, e?.createdate]);

  @override
  bool isValidKey(Object? o) => o is DesignDepotRecord;
}
