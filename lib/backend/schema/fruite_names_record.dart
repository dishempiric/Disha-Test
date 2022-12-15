import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fruite_names_record.g.dart';

abstract class FruiteNamesRecord
    implements Built<FruiteNamesRecord, FruiteNamesRecordBuilder> {
  static Serializer<FruiteNamesRecord> get serializer =>
      _$fruiteNamesRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: 'is_favourite')
  bool? get isFavourite;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  String? get uid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FruiteNamesRecordBuilder builder) => builder
    ..name = ''
    ..isFavourite = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FruiteNames');

  static Stream<FruiteNamesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FruiteNamesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FruiteNamesRecord._();
  factory FruiteNamesRecord([void Function(FruiteNamesRecordBuilder) updates]) =
      _$FruiteNamesRecord;

  static FruiteNamesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFruiteNamesRecordData({
  String? name,
  bool? isFavourite,
  String? email,
  String? displayName,
  String? photoUrl,
  String? phoneNumber,
  DateTime? createdTime,
  String? uid,
}) {
  final firestoreData = serializers.toFirestore(
    FruiteNamesRecord.serializer,
    FruiteNamesRecord(
      (f) => f
        ..name = name
        ..isFavourite = isFavourite
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..phoneNumber = phoneNumber
        ..createdTime = createdTime
        ..uid = uid,
    ),
  );

  return firestoreData;
}
