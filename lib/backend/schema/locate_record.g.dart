// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locate_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocateRecord> _$locateRecordSerializer =
    new _$LocateRecordSerializer();

class _$LocateRecordSerializer implements StructuredSerializer<LocateRecord> {
  @override
  final Iterable<Type> types = const [LocateRecord, _$LocateRecord];
  @override
  final String wireName = 'LocateRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocateRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userLocation;
    if (value != null) {
      result
        ..add('user_location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userProfile;
    if (value != null) {
      result
        ..add('user_profile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userTime;
    if (value != null) {
      result
        ..add('user_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userNote;
    if (value != null) {
      result
        ..add('user_note')
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
  LocateRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocateRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_location':
          result.userLocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'user_profile':
          result.userProfile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_time':
          result.userTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user_note':
          result.userNote = serializers.deserialize(value,
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

class _$LocateRecord extends LocateRecord {
  @override
  final String? userName;
  @override
  final LatLng? userLocation;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final String? userProfile;
  @override
  final DateTime? userTime;
  @override
  final String? userNote;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LocateRecord([void Function(LocateRecordBuilder)? updates]) =>
      (new LocateRecordBuilder()..update(updates))._build();

  _$LocateRecord._(
      {this.userName,
      this.userLocation,
      this.uid,
      this.userProfile,
      this.userTime,
      this.userNote,
      this.ffRef})
      : super._();

  @override
  LocateRecord rebuild(void Function(LocateRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocateRecordBuilder toBuilder() => new LocateRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocateRecord &&
        userName == other.userName &&
        userLocation == other.userLocation &&
        uid == other.uid &&
        userProfile == other.userProfile &&
        userTime == other.userTime &&
        userNote == other.userNote &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userName.hashCode);
    _$hash = $jc(_$hash, userLocation.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, userProfile.hashCode);
    _$hash = $jc(_$hash, userTime.hashCode);
    _$hash = $jc(_$hash, userNote.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocateRecord')
          ..add('userName', userName)
          ..add('userLocation', userLocation)
          ..add('uid', uid)
          ..add('userProfile', userProfile)
          ..add('userTime', userTime)
          ..add('userNote', userNote)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LocateRecordBuilder
    implements Builder<LocateRecord, LocateRecordBuilder> {
  _$LocateRecord? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  LatLng? _userLocation;
  LatLng? get userLocation => _$this._userLocation;
  set userLocation(LatLng? userLocation) => _$this._userLocation = userLocation;

  DocumentReference<Object?>? _uid;
  DocumentReference<Object?>? get uid => _$this._uid;
  set uid(DocumentReference<Object?>? uid) => _$this._uid = uid;

  String? _userProfile;
  String? get userProfile => _$this._userProfile;
  set userProfile(String? userProfile) => _$this._userProfile = userProfile;

  DateTime? _userTime;
  DateTime? get userTime => _$this._userTime;
  set userTime(DateTime? userTime) => _$this._userTime = userTime;

  String? _userNote;
  String? get userNote => _$this._userNote;
  set userNote(String? userNote) => _$this._userNote = userNote;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LocateRecordBuilder() {
    LocateRecord._initializeBuilder(this);
  }

  LocateRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _userLocation = $v.userLocation;
      _uid = $v.uid;
      _userProfile = $v.userProfile;
      _userTime = $v.userTime;
      _userNote = $v.userNote;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocateRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocateRecord;
  }

  @override
  void update(void Function(LocateRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocateRecord build() => _build();

  _$LocateRecord _build() {
    final _$result = _$v ??
        new _$LocateRecord._(
            userName: userName,
            userLocation: userLocation,
            uid: uid,
            userProfile: userProfile,
            userTime: userTime,
            userNote: userNote,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
