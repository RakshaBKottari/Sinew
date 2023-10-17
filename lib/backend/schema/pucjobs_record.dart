import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PucjobsRecord extends FirestoreRecord {
  PucjobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "titledescription" field.
  String? _titledescription;
  String get titledescription => _titledescription ?? '';
  bool hasTitledescription() => _titledescription != null;

  // "streamShort" field.
  String? _streamShort;
  String get streamShort => _streamShort ?? '';
  bool hasStreamShort() => _streamShort != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _titledescription = snapshotData['titledescription'] as String?;
    _streamShort = snapshotData['streamShort'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pucjobs');

  static Stream<PucjobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PucjobsRecord.fromSnapshot(s));

  static Future<PucjobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PucjobsRecord.fromSnapshot(s));

  static PucjobsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PucjobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PucjobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PucjobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PucjobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PucjobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPucjobsRecordData({
  String? title,
  String? titledescription,
  String? streamShort,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'titledescription': titledescription,
      'streamShort': streamShort,
    }.withoutNulls,
  );

  return firestoreData;
}

class PucjobsRecordDocumentEquality implements Equality<PucjobsRecord> {
  const PucjobsRecordDocumentEquality();

  @override
  bool equals(PucjobsRecord? e1, PucjobsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.titledescription == e2?.titledescription &&
        e1?.streamShort == e2?.streamShort;
  }

  @override
  int hash(PucjobsRecord? e) => const ListEquality()
      .hash([e?.title, e?.titledescription, e?.streamShort]);

  @override
  bool isValidKey(Object? o) => o is PucjobsRecord;
}
