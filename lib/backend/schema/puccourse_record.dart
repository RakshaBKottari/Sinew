import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PuccourseRecord extends FirestoreRecord {
  PuccourseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "course" field.
  String? _course;
  String get course => _course ?? '';
  bool hasCourse() => _course != null;

  // "coursedescription" field.
  String? _coursedescription;
  String get coursedescription => _coursedescription ?? '';
  bool hasCoursedescription() => _coursedescription != null;

  // "streamShort" field.
  String? _streamShort;
  String get streamShort => _streamShort ?? '';
  bool hasStreamShort() => _streamShort != null;

  void _initializeFields() {
    _course = snapshotData['course'] as String?;
    _coursedescription = snapshotData['coursedescription'] as String?;
    _streamShort = snapshotData['streamShort'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('puccourse');

  static Stream<PuccourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuccourseRecord.fromSnapshot(s));

  static Future<PuccourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuccourseRecord.fromSnapshot(s));

  static PuccourseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PuccourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuccourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuccourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuccourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuccourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuccourseRecordData({
  String? course,
  String? coursedescription,
  String? streamShort,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'course': course,
      'coursedescription': coursedescription,
      'streamShort': streamShort,
    }.withoutNulls,
  );

  return firestoreData;
}

class PuccourseRecordDocumentEquality implements Equality<PuccourseRecord> {
  const PuccourseRecordDocumentEquality();

  @override
  bool equals(PuccourseRecord? e1, PuccourseRecord? e2) {
    return e1?.course == e2?.course &&
        e1?.coursedescription == e2?.coursedescription &&
        e1?.streamShort == e2?.streamShort;
  }

  @override
  int hash(PuccourseRecord? e) => const ListEquality()
      .hash([e?.course, e?.coursedescription, e?.streamShort]);

  @override
  bool isValidKey(Object? o) => o is PuccourseRecord;
}
