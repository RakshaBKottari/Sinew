import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SslcpucRecord extends FirestoreRecord {
  SslcpucRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "stream" field.
  String? _stream;
  String get stream => _stream ?? '';
  bool hasStream() => _stream != null;

  // "streamDescription" field.
  String? _streamDescription;
  String get streamDescription => _streamDescription ?? '';
  bool hasStreamDescription() => _streamDescription != null;

  // "streamShort" field.
  String? _streamShort;
  String get streamShort => _streamShort ?? '';
  bool hasStreamShort() => _streamShort != null;

  void _initializeFields() {
    _stream = snapshotData['stream'] as String?;
    _streamDescription = snapshotData['streamDescription'] as String?;
    _streamShort = snapshotData['streamShort'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sslcpuc');

  static Stream<SslcpucRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SslcpucRecord.fromSnapshot(s));

  static Future<SslcpucRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SslcpucRecord.fromSnapshot(s));

  static SslcpucRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SslcpucRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SslcpucRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SslcpucRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SslcpucRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SslcpucRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSslcpucRecordData({
  String? stream,
  String? streamDescription,
  String? streamShort,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stream': stream,
      'streamDescription': streamDescription,
      'streamShort': streamShort,
    }.withoutNulls,
  );

  return firestoreData;
}

class SslcpucRecordDocumentEquality implements Equality<SslcpucRecord> {
  const SslcpucRecordDocumentEquality();

  @override
  bool equals(SslcpucRecord? e1, SslcpucRecord? e2) {
    return e1?.stream == e2?.stream &&
        e1?.streamDescription == e2?.streamDescription &&
        e1?.streamShort == e2?.streamShort;
  }

  @override
  int hash(SslcpucRecord? e) => const ListEquality()
      .hash([e?.stream, e?.streamDescription, e?.streamShort]);

  @override
  bool isValidKey(Object? o) => o is SslcpucRecord;
}
