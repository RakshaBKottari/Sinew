import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SslcjobsRecord extends FirestoreRecord {
  SslcjobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "titleDiscription" field.
  String? _titleDiscription;
  String get titleDiscription => _titleDiscription ?? '';
  bool hasTitleDiscription() => _titleDiscription != null;

  // "streamShort" field.
  String? _streamShort;
  String get streamShort => _streamShort ?? '';
  bool hasStreamShort() => _streamShort != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _titleDiscription = snapshotData['titleDiscription'] as String?;
    _streamShort = snapshotData['streamShort'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sslcjobs');

  static Stream<SslcjobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SslcjobsRecord.fromSnapshot(s));

  static Future<SslcjobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SslcjobsRecord.fromSnapshot(s));

  static SslcjobsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SslcjobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SslcjobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SslcjobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SslcjobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SslcjobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSslcjobsRecordData({
  String? title,
  String? titleDiscription,
  String? streamShort,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'titleDiscription': titleDiscription,
      'streamShort': streamShort,
    }.withoutNulls,
  );

  return firestoreData;
}

class SslcjobsRecordDocumentEquality implements Equality<SslcjobsRecord> {
  const SslcjobsRecordDocumentEquality();

  @override
  bool equals(SslcjobsRecord? e1, SslcjobsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.titleDiscription == e2?.titleDiscription &&
        e1?.streamShort == e2?.streamShort;
  }

  @override
  int hash(SslcjobsRecord? e) => const ListEquality()
      .hash([e?.title, e?.titleDiscription, e?.streamShort]);

  @override
  bool isValidKey(Object? o) => o is SslcjobsRecord;
}
