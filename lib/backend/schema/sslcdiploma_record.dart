import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SslcdiplomaRecord extends FirestoreRecord {
  SslcdiplomaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "stream" field.
  String? _stream;
  String get stream => _stream ?? '';
  bool hasStream() => _stream != null;

  // "stringDescription" field.
  String? _stringDescription;
  String get stringDescription => _stringDescription ?? '';
  bool hasStringDescription() => _stringDescription != null;

  // "streamShort" field.
  String? _streamShort;
  String get streamShort => _streamShort ?? '';
  bool hasStreamShort() => _streamShort != null;

  void _initializeFields() {
    _stream = snapshotData['stream'] as String?;
    _stringDescription = snapshotData['stringDescription'] as String?;
    _streamShort = snapshotData['streamShort'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sslcdiploma');

  static Stream<SslcdiplomaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SslcdiplomaRecord.fromSnapshot(s));

  static Future<SslcdiplomaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SslcdiplomaRecord.fromSnapshot(s));

  static SslcdiplomaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SslcdiplomaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SslcdiplomaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SslcdiplomaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SslcdiplomaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SslcdiplomaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSslcdiplomaRecordData({
  String? stream,
  String? stringDescription,
  String? streamShort,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stream': stream,
      'stringDescription': stringDescription,
      'streamShort': streamShort,
    }.withoutNulls,
  );

  return firestoreData;
}

class SslcdiplomaRecordDocumentEquality implements Equality<SslcdiplomaRecord> {
  const SslcdiplomaRecordDocumentEquality();

  @override
  bool equals(SslcdiplomaRecord? e1, SslcdiplomaRecord? e2) {
    return e1?.stream == e2?.stream &&
        e1?.stringDescription == e2?.stringDescription &&
        e1?.streamShort == e2?.streamShort;
  }

  @override
  int hash(SslcdiplomaRecord? e) => const ListEquality()
      .hash([e?.stream, e?.stringDescription, e?.streamShort]);

  @override
  bool isValidKey(Object? o) => o is SslcdiplomaRecord;
}
