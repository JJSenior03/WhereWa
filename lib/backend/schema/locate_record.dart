import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locate_record.g.dart';

abstract class LocateRecord
    implements Built<LocateRecord, LocateRecordBuilder> {
  static Serializer<LocateRecord> get serializer => _$locateRecordSerializer;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'user_location')
  LatLng? get userLocation;

  DocumentReference? get uid;

  @BuiltValueField(wireName: 'user_profile')
  String? get userProfile;

  @BuiltValueField(wireName: 'user_time')
  DateTime? get userTime;

  @BuiltValueField(wireName: 'user_note')
  String? get userNote;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(LocateRecordBuilder builder) => builder
    ..userName = ''
    ..userProfile = ''
    ..userNote = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('locate')
          : FirebaseFirestore.instance.collectionGroup('locate');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('locate').doc();

  static Stream<LocateRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LocateRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LocateRecord._();
  factory LocateRecord([void Function(LocateRecordBuilder) updates]) =
      _$LocateRecord;

  static LocateRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLocateRecordData({
  String? userName,
  LatLng? userLocation,
  DocumentReference? uid,
  String? userProfile,
  DateTime? userTime,
  String? userNote,
}) {
  final firestoreData = serializers.toFirestore(
    LocateRecord.serializer,
    LocateRecord(
      (l) => l
        ..userName = userName
        ..userLocation = userLocation
        ..uid = uid
        ..userProfile = userProfile
        ..userTime = userTime
        ..userNote = userNote,
    ),
  );

  return firestoreData;
}
