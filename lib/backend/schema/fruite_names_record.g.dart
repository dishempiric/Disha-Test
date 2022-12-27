// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruite_names_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FruiteNamesRecord> _$fruiteNamesRecordSerializer =
    new _$FruiteNamesRecordSerializer();

class _$FruiteNamesRecordSerializer
    implements StructuredSerializer<FruiteNamesRecord> {
  @override
  final Iterable<Type> types = const [FruiteNamesRecord, _$FruiteNamesRecord];
  @override
  final String wireName = 'FruiteNamesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FruiteNamesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFavourite;
    if (value != null) {
      result
        ..add('is_favourite')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.love;
    if (value != null) {
      result
        ..add('love')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FruiteNamesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FruiteNamesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_favourite':
          result.isFavourite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'love':
          result.love = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FruiteNamesRecord extends FruiteNamesRecord {
  @override
  final String? name;
  @override
  final bool? isFavourite;
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? phoneNumber;
  @override
  final DateTime? createdTime;
  @override
  final String? uid;
  @override
  final String? love;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FruiteNamesRecord(
          [void Function(FruiteNamesRecordBuilder)? updates]) =>
      (new FruiteNamesRecordBuilder()..update(updates))._build();

  _$FruiteNamesRecord._(
      {this.name,
      this.isFavourite,
      this.email,
      this.displayName,
      this.photoUrl,
      this.phoneNumber,
      this.createdTime,
      this.uid,
      this.love,
      this.ffRef})
      : super._();

  @override
  FruiteNamesRecord rebuild(void Function(FruiteNamesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FruiteNamesRecordBuilder toBuilder() =>
      new FruiteNamesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FruiteNamesRecord &&
        name == other.name &&
        isFavourite == other.isFavourite &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        createdTime == other.createdTime &&
        uid == other.uid &&
        love == other.love &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, name.hashCode),
                                        isFavourite.hashCode),
                                    email.hashCode),
                                displayName.hashCode),
                            photoUrl.hashCode),
                        phoneNumber.hashCode),
                    createdTime.hashCode),
                uid.hashCode),
            love.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FruiteNamesRecord')
          ..add('name', name)
          ..add('isFavourite', isFavourite)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('phoneNumber', phoneNumber)
          ..add('createdTime', createdTime)
          ..add('uid', uid)
          ..add('love', love)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FruiteNamesRecordBuilder
    implements Builder<FruiteNamesRecord, FruiteNamesRecordBuilder> {
  _$FruiteNamesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isFavourite;
  bool? get isFavourite => _$this._isFavourite;
  set isFavourite(bool? isFavourite) => _$this._isFavourite = isFavourite;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _love;
  String? get love => _$this._love;
  set love(String? love) => _$this._love = love;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FruiteNamesRecordBuilder() {
    FruiteNamesRecord._initializeBuilder(this);
  }

  FruiteNamesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isFavourite = $v.isFavourite;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _phoneNumber = $v.phoneNumber;
      _createdTime = $v.createdTime;
      _uid = $v.uid;
      _love = $v.love;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FruiteNamesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FruiteNamesRecord;
  }

  @override
  void update(void Function(FruiteNamesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FruiteNamesRecord build() => _build();

  _$FruiteNamesRecord _build() {
    final _$result = _$v ??
        new _$FruiteNamesRecord._(
            name: name,
            isFavourite: isFavourite,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            phoneNumber: phoneNumber,
            createdTime: createdTime,
            uid: uid,
            love: love,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
