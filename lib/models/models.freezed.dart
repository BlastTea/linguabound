// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseInt)
  set id(int? value) => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified_at')
  set emailVerifiedAt(DateTime? value) => throw _privateConstructorUsedError;
  UserRole? get role => throw _privateConstructorUsedError;
  set role(UserRole? value) => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;
  set foto(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updateAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  set updateAt(DateTime? value) => throw _privateConstructorUsedError;
  UserDetail? get detail => throw _privateConstructorUsedError;
  set detail(UserDetail? value) => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? get imageData => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set imageData(Uint8List? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      UserRole? role,
      String? foto,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updateAt,
      UserDetail? detail,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData});

  $UserDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? role = freezed,
    Object? foto = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
    Object? detail = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      imageData: freezed == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailCopyWith<$Res>? get detail {
    if (_value.detail == null) {
      return null;
    }

    return $UserDetailCopyWith<$Res>(_value.detail!, (value) {
      return _then(_value.copyWith(detail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      UserRole? role,
      String? foto,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updateAt,
      UserDetail? detail,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData});

  @override
  $UserDetailCopyWith<$Res>? get detail;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? emailVerifiedAt = freezed,
    Object? role = freezed,
    Object? foto = freezed,
    Object? createdAt = freezed,
    Object? updateAt = freezed,
    Object? detail = freezed,
    Object? imageData = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerifiedAt: freezed == emailVerifiedAt
          ? _value.emailVerifiedAt
          : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as UserRole?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateAt: freezed == updateAt
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as UserDetail?,
      imageData: freezed == imageData
          ? _value.imageData
          : imageData // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      this.name,
      this.email,
      @JsonKey(name: 'email_verified_at') this.emailVerifiedAt,
      this.role,
      this.foto,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updateAt,
      this.detail,
      @JsonKey(includeFromJson: false, includeToJson: false) this.imageData});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  int? id;
  @override
  String? name;
  @override
  String? email;
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? emailVerifiedAt;
  @override
  UserRole? role;
  @override
  String? foto;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updateAt;
  @override
  UserDetail? detail;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? imageData;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, role: $role, foto: $foto, createdAt: $createdAt, updateAt: $updateAt, detail: $detail, imageData: $imageData)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? name,
      String? email,
      @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
      UserRole? role,
      String? foto,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updateAt,
      UserDetail? detail,
      @JsonKey(includeFromJson: false, includeToJson: false)
      Uint8List? imageData}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @JsonKey(fromJson: _parseInt)
  set id(int? value);
  @override
  String? get name;
  set name(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  @JsonKey(name: 'email_verified_at')
  DateTime? get emailVerifiedAt;
  @JsonKey(name: 'email_verified_at')
  set emailVerifiedAt(DateTime? value);
  @override
  UserRole? get role;
  set role(UserRole? value);
  @override
  String? get foto;
  set foto(String? value);
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updateAt;
  @JsonKey(name: 'updated_at')
  set updateAt(DateTime? value);
  @override
  UserDetail? get detail;
  set detail(UserDetail? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? get imageData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set imageData(Uint8List? value);
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetail _$UserDetailFromJson(Map<String, dynamic> json) {
  switch (json['role']) {
    case 'Remaja':
      return Remaja.fromJson(json);
    case 'Mentor':
      return Mentor.fromJson(json);
    case 'Parent':
      return OrangTua.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'role', 'UserDetail', 'Invalid union type "${json['role']}"!');
  }
}

/// @nodoc
mixin _$UserDetail {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailCopyWith<$Res> {
  factory $UserDetailCopyWith(
          UserDetail value, $Res Function(UserDetail) then) =
      _$UserDetailCopyWithImpl<$Res, UserDetail>;
}

/// @nodoc
class _$UserDetailCopyWithImpl<$Res, $Val extends UserDetail>
    implements $UserDetailCopyWith<$Res> {
  _$UserDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RemajaImplCopyWith<$Res> {
  factory _$$RemajaImplCopyWith(
          _$RemajaImpl value, $Res Function(_$RemajaImpl) then) =
      __$$RemajaImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
      @JsonKey(fromJson: _parseInt) int? exp,
      @JsonKey(fromJson: _parseInt) int? star,
      @JsonKey(fromJson: _parseInt) int? level,
      @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'orang_tua_id') int? orangTuaId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$RemajaImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$RemajaImpl>
    implements _$$RemajaImplCopyWith<$Res> {
  __$$RemajaImplCopyWithImpl(
      _$RemajaImpl _value, $Res Function(_$RemajaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaOrangTua = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? level = freezed,
    Object? kodeOrangTua = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? orangTuaId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RemajaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaOrangTua: freezed == namaOrangTua
          ? _value.namaOrangTua
          : namaOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      kodeOrangTua: freezed == kodeOrangTua
          ? _value.kodeOrangTua
          : kodeOrangTua // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      orangTuaId: freezed == orangTuaId
          ? _value.orangTuaId
          : orangTuaId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemajaImpl implements Remaja {
  _$RemajaImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      @JsonKey(name: 'nama_orang_tua') this.namaOrangTua,
      @JsonKey(fromJson: _parseInt) this.exp,
      @JsonKey(fromJson: _parseInt) this.star,
      @JsonKey(fromJson: _parseInt) this.level,
      @JsonKey(name: 'kode_orang_tua') this.kodeOrangTua,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      @JsonKey(name: 'orang_tua_id') this.orangTuaId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final String? $type})
      : $type = $type ?? 'Remaja';

  factory _$RemajaImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemajaImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  int? id;
  @override
  @JsonKey(name: 'nama_orang_tua')
  String? namaOrangTua;
  @override
  @JsonKey(fromJson: _parseInt)
  int? exp;
  @override
  @JsonKey(fromJson: _parseInt)
  int? star;
  @override
  @JsonKey(fromJson: _parseInt)
  int? level;
  @override
  @JsonKey(name: 'kode_orang_tua')
  String? kodeOrangTua;
  @override
  @JsonKey(name: 'user_id')
  int? userId;
  @override
  String? username;
  @override
  @JsonKey(name: 'orang_tua_id')
  int? orangTuaId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.remaja(id: $id, namaOrangTua: $namaOrangTua, exp: $exp, star: $star, level: $level, kodeOrangTua: $kodeOrangTua, userId: $userId, username: $username, orangTuaId: $orangTuaId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemajaImplCopyWith<_$RemajaImpl> get copyWith =>
      __$$RemajaImplCopyWithImpl<_$RemajaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) {
    return remaja(id, namaOrangTua, exp, star, level, kodeOrangTua, userId,
        username, orangTuaId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) {
    return remaja?.call(id, namaOrangTua, exp, star, level, kodeOrangTua,
        userId, username, orangTuaId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) {
    if (remaja != null) {
      return remaja(id, namaOrangTua, exp, star, level, kodeOrangTua, userId,
          username, orangTuaId, createdAt, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) {
    return remaja(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) {
    return remaja?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) {
    if (remaja != null) {
      return remaja(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemajaImplToJson(
      this,
    );
  }
}

abstract class Remaja implements UserDetail {
  factory Remaja(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
      @JsonKey(fromJson: _parseInt) int? exp,
      @JsonKey(fromJson: _parseInt) int? star,
      @JsonKey(fromJson: _parseInt) int? level,
      @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'orang_tua_id') int? orangTuaId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$RemajaImpl;

  factory Remaja.fromJson(Map<String, dynamic> json) = _$RemajaImpl.fromJson;

  @JsonKey(fromJson: _parseInt)
  int? get id;
  @JsonKey(fromJson: _parseInt)
  set id(int? value);
  @JsonKey(name: 'nama_orang_tua')
  String? get namaOrangTua;
  @JsonKey(name: 'nama_orang_tua')
  set namaOrangTua(String? value);
  @JsonKey(fromJson: _parseInt)
  int? get exp;
  @JsonKey(fromJson: _parseInt)
  set exp(int? value);
  @JsonKey(fromJson: _parseInt)
  int? get star;
  @JsonKey(fromJson: _parseInt)
  set star(int? value);
  @JsonKey(fromJson: _parseInt)
  int? get level;
  @JsonKey(fromJson: _parseInt)
  set level(int? value);
  @JsonKey(name: 'kode_orang_tua')
  String? get kodeOrangTua;
  @JsonKey(name: 'kode_orang_tua')
  set kodeOrangTua(String? value);
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(name: 'user_id')
  set userId(int? value);
  String? get username;
  set username(String? value);
  @JsonKey(name: 'orang_tua_id')
  int? get orangTuaId;
  @JsonKey(name: 'orang_tua_id')
  set orangTuaId(int? value);
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @JsonKey(ignore: true)
  _$$RemajaImplCopyWith<_$RemajaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MentorImplCopyWith<$Res> {
  factory _$$MentorImplCopyWith(
          _$MentorImpl value, $Res Function(_$MentorImpl) then) =
      __$$MentorImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? nama,
      String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      String? riwayatPendidikanTerakhir});
}

/// @nodoc
class __$$MentorImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$MentorImpl>
    implements _$$MentorImplCopyWith<$Res> {
  __$$MentorImplCopyWithImpl(
      _$MentorImpl _value, $Res Function(_$MentorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nama = freezed,
    Object? gelar = freezed,
    Object? riwayatPendidikanTerakhir = freezed,
  }) {
    return _then(_$MentorImpl(
      nama: freezed == nama
          ? _value.nama
          : nama // ignore: cast_nullable_to_non_nullable
              as String?,
      gelar: freezed == gelar
          ? _value.gelar
          : gelar // ignore: cast_nullable_to_non_nullable
              as String?,
      riwayatPendidikanTerakhir: freezed == riwayatPendidikanTerakhir
          ? _value.riwayatPendidikanTerakhir
          : riwayatPendidikanTerakhir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MentorImpl implements Mentor {
  _$MentorImpl(
      {this.nama,
      this.gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      this.riwayatPendidikanTerakhir,
      final String? $type})
      : $type = $type ?? 'Mentor';

  factory _$MentorImpl.fromJson(Map<String, dynamic> json) =>
      _$$MentorImplFromJson(json);

  @override
  String? nama;
  @override
  String? gelar;
  @override
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  String? riwayatPendidikanTerakhir;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.mentor(nama: $nama, gelar: $gelar, riwayatPendidikanTerakhir: $riwayatPendidikanTerakhir)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      __$$MentorImplCopyWithImpl<_$MentorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) {
    return mentor(nama, gelar, riwayatPendidikanTerakhir);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) {
    return mentor?.call(nama, gelar, riwayatPendidikanTerakhir);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) {
    if (mentor != null) {
      return mentor(nama, gelar, riwayatPendidikanTerakhir);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) {
    return mentor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) {
    return mentor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) {
    if (mentor != null) {
      return mentor(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MentorImplToJson(
      this,
    );
  }
}

abstract class Mentor implements UserDetail {
  factory Mentor(
      {String? nama,
      String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      String? riwayatPendidikanTerakhir}) = _$MentorImpl;

  factory Mentor.fromJson(Map<String, dynamic> json) = _$MentorImpl.fromJson;

  String? get nama;
  set nama(String? value);
  String? get gelar;
  set gelar(String? value);
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  String? get riwayatPendidikanTerakhir;
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  set riwayatPendidikanTerakhir(String? value);
  @JsonKey(ignore: true)
  _$$MentorImplCopyWith<_$MentorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrangTuaImplCopyWith<$Res> {
  factory _$$OrangTuaImplCopyWith(
          _$OrangTuaImpl value, $Res Function(_$OrangTuaImpl) then) =
      __$$OrangTuaImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'nama_lengkap') String? namaLengkap,
      String? kode,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$OrangTuaImplCopyWithImpl<$Res>
    extends _$UserDetailCopyWithImpl<$Res, _$OrangTuaImpl>
    implements _$$OrangTuaImplCopyWith<$Res> {
  __$$OrangTuaImplCopyWithImpl(
      _$OrangTuaImpl _value, $Res Function(_$OrangTuaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? namaLengkap = freezed,
    Object? kode = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$OrangTuaImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      kode: freezed == kode
          ? _value.kode
          : kode // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrangTuaImpl implements OrangTua {
  _$OrangTuaImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      @JsonKey(name: 'nama_lengkap') this.namaLengkap,
      this.kode,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      final String? $type})
      : $type = $type ?? 'Parent';

  factory _$OrangTuaImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrangTuaImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  int? id;
  @override
  @JsonKey(name: 'nama_lengkap')
  String? namaLengkap;
  @override
  String? kode;
  @override
  @JsonKey(name: 'user_id')
  int? userId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  @JsonKey(name: 'role')
  final String $type;

  @override
  String toString() {
    return 'UserDetail.orangTua(id: $id, namaLengkap: $namaLengkap, kode: $kode, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrangTuaImplCopyWith<_$OrangTuaImpl> get copyWith =>
      __$$OrangTuaImplCopyWithImpl<_$OrangTuaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        remaja,
    required TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)
        mentor,
    required TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)
        orangTua,
  }) {
    return orangTua(id, namaLengkap, kode, userId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult? Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult? Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
  }) {
    return orangTua?.call(id, namaLengkap, kode, userId, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_orang_tua') String? namaOrangTua,
            @JsonKey(fromJson: _parseInt) int? exp,
            @JsonKey(fromJson: _parseInt) int? star,
            @JsonKey(fromJson: _parseInt) int? level,
            @JsonKey(name: 'kode_orang_tua') String? kodeOrangTua,
            @JsonKey(name: 'user_id') int? userId,
            String? username,
            @JsonKey(name: 'orang_tua_id') int? orangTuaId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        remaja,
    TResult Function(
            String? nama,
            String? gelar,
            @JsonKey(name: 'riwayat_pendidikan_terakhir')
            String? riwayatPendidikanTerakhir)?
        mentor,
    TResult Function(
            @JsonKey(fromJson: _parseInt) int? id,
            @JsonKey(name: 'nama_lengkap') String? namaLengkap,
            String? kode,
            @JsonKey(name: 'user_id') int? userId,
            @JsonKey(name: 'created_at') DateTime? createdAt,
            @JsonKey(name: 'updated_at') DateTime? updatedAt)?
        orangTua,
    required TResult orElse(),
  }) {
    if (orangTua != null) {
      return orangTua(id, namaLengkap, kode, userId, createdAt, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Remaja value) remaja,
    required TResult Function(Mentor value) mentor,
    required TResult Function(OrangTua value) orangTua,
  }) {
    return orangTua(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Remaja value)? remaja,
    TResult? Function(Mentor value)? mentor,
    TResult? Function(OrangTua value)? orangTua,
  }) {
    return orangTua?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Remaja value)? remaja,
    TResult Function(Mentor value)? mentor,
    TResult Function(OrangTua value)? orangTua,
    required TResult orElse(),
  }) {
    if (orangTua != null) {
      return orangTua(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrangTuaImplToJson(
      this,
    );
  }
}

abstract class OrangTua implements UserDetail {
  factory OrangTua(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'nama_lengkap') String? namaLengkap,
      String? kode,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt}) = _$OrangTuaImpl;

  factory OrangTua.fromJson(Map<String, dynamic> json) =
      _$OrangTuaImpl.fromJson;

  @JsonKey(fromJson: _parseInt)
  int? get id;
  @JsonKey(fromJson: _parseInt)
  set id(int? value);
  @JsonKey(name: 'nama_lengkap')
  String? get namaLengkap;
  @JsonKey(name: 'nama_lengkap')
  set namaLengkap(String? value);
  String? get kode;
  set kode(String? value);
  @JsonKey(name: 'user_id')
  int? get userId;
  @JsonKey(name: 'user_id')
  set userId(int? value);
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(name: 'created_at')
  set createdAt(DateTime? value);
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @JsonKey(name: 'updated_at')
  set updatedAt(DateTime? value);
  @JsonKey(ignore: true)
  _$$OrangTuaImplCopyWith<_$OrangTuaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Leaderboard _$LeaderboardFromJson(Map<String, dynamic> json) {
  return _Leaderboard.fromJson(json);
}

/// @nodoc
mixin _$Leaderboard {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseInt)
  int? get exp => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseInt)
  int? get star => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaderboardCopyWith<Leaderboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaderboardCopyWith<$Res> {
  factory $LeaderboardCopyWith(
          Leaderboard value, $Res Function(Leaderboard) then) =
      _$LeaderboardCopyWithImpl<$Res, Leaderboard>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? name,
      @JsonKey(fromJson: _parseInt) int? exp,
      @JsonKey(fromJson: _parseInt) int? star,
      String? foto});
}

/// @nodoc
class _$LeaderboardCopyWithImpl<$Res, $Val extends Leaderboard>
    implements $LeaderboardCopyWith<$Res> {
  _$LeaderboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? foto = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LeaderboardImplCopyWith<$Res>
    implements $LeaderboardCopyWith<$Res> {
  factory _$$LeaderboardImplCopyWith(
          _$LeaderboardImpl value, $Res Function(_$LeaderboardImpl) then) =
      __$$LeaderboardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? name,
      @JsonKey(fromJson: _parseInt) int? exp,
      @JsonKey(fromJson: _parseInt) int? star,
      String? foto});
}

/// @nodoc
class __$$LeaderboardImplCopyWithImpl<$Res>
    extends _$LeaderboardCopyWithImpl<$Res, _$LeaderboardImpl>
    implements _$$LeaderboardImplCopyWith<$Res> {
  __$$LeaderboardImplCopyWithImpl(
      _$LeaderboardImpl _value, $Res Function(_$LeaderboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? exp = freezed,
    Object? star = freezed,
    Object? foto = freezed,
  }) {
    return _then(_$LeaderboardImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      exp: freezed == exp
          ? _value.exp
          : exp // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as int?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaderboardImpl implements _Leaderboard {
  _$LeaderboardImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      this.name,
      @JsonKey(fromJson: _parseInt) this.exp,
      @JsonKey(fromJson: _parseInt) this.star,
      this.foto});

  factory _$LeaderboardImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaderboardImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(fromJson: _parseInt)
  final int? exp;
  @override
  @JsonKey(fromJson: _parseInt)
  final int? star;
  @override
  final String? foto;

  @override
  String toString() {
    return 'Leaderboard(id: $id, name: $name, exp: $exp, star: $star, foto: $foto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaderboardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.exp, exp) || other.exp == exp) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.foto, foto) || other.foto == foto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, exp, star, foto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaderboardImplCopyWith<_$LeaderboardImpl> get copyWith =>
      __$$LeaderboardImplCopyWithImpl<_$LeaderboardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaderboardImplToJson(
      this,
    );
  }
}

abstract class _Leaderboard implements Leaderboard {
  factory _Leaderboard(
      {@JsonKey(fromJson: _parseInt) final int? id,
      final String? name,
      @JsonKey(fromJson: _parseInt) final int? exp,
      @JsonKey(fromJson: _parseInt) final int? star,
      final String? foto}) = _$LeaderboardImpl;

  factory _Leaderboard.fromJson(Map<String, dynamic> json) =
      _$LeaderboardImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(fromJson: _parseInt)
  int? get exp;
  @override
  @JsonKey(fromJson: _parseInt)
  int? get star;
  @override
  String? get foto;
  @override
  @JsonKey(ignore: true)
  _$$LeaderboardImplCopyWith<_$LeaderboardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaja_id')
  int? get remajaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bagian_id')
  int? get bagianId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_bagian_id')
  int? get subBagianId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseInt)
  int? get nilai => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool? get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_bagian')
  String? get namaBagian => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_sub_bagian')
  String? get namaSubBagian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'remaja_id') int? remajaId,
      @JsonKey(name: 'bagian_id') int? bagianId,
      @JsonKey(name: 'sub_bagian_id') int? subBagianId,
      @JsonKey(fromJson: _parseInt) int? nilai,
      @JsonKey(fromJson: _parseBool) bool? completed,
      @JsonKey(name: 'nama_bagian') String? namaBagian,
      @JsonKey(name: 'nama_sub_bagian') String? namaSubBagian});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? remajaId = freezed,
    Object? bagianId = freezed,
    Object? subBagianId = freezed,
    Object? nilai = freezed,
    Object? completed = freezed,
    Object? namaBagian = freezed,
    Object? namaSubBagian = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remajaId: freezed == remajaId
          ? _value.remajaId
          : remajaId // ignore: cast_nullable_to_non_nullable
              as int?,
      bagianId: freezed == bagianId
          ? _value.bagianId
          : bagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      subBagianId: freezed == subBagianId
          ? _value.subBagianId
          : subBagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      namaBagian: freezed == namaBagian
          ? _value.namaBagian
          : namaBagian // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSubBagian: freezed == namaSubBagian
          ? _value.namaSubBagian
          : namaSubBagian // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'remaja_id') int? remajaId,
      @JsonKey(name: 'bagian_id') int? bagianId,
      @JsonKey(name: 'sub_bagian_id') int? subBagianId,
      @JsonKey(fromJson: _parseInt) int? nilai,
      @JsonKey(fromJson: _parseBool) bool? completed,
      @JsonKey(name: 'nama_bagian') String? namaBagian,
      @JsonKey(name: 'nama_sub_bagian') String? namaSubBagian});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? remajaId = freezed,
    Object? bagianId = freezed,
    Object? subBagianId = freezed,
    Object? nilai = freezed,
    Object? completed = freezed,
    Object? namaBagian = freezed,
    Object? namaSubBagian = freezed,
  }) {
    return _then(_$ExerciseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remajaId: freezed == remajaId
          ? _value.remajaId
          : remajaId // ignore: cast_nullable_to_non_nullable
              as int?,
      bagianId: freezed == bagianId
          ? _value.bagianId
          : bagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      subBagianId: freezed == subBagianId
          ? _value.subBagianId
          : subBagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      namaBagian: freezed == namaBagian
          ? _value.namaBagian
          : namaBagian // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSubBagian: freezed == namaSubBagian
          ? _value.namaSubBagian
          : namaSubBagian // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  _$ExerciseImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      @JsonKey(name: 'remaja_id') this.remajaId,
      @JsonKey(name: 'bagian_id') this.bagianId,
      @JsonKey(name: 'sub_bagian_id') this.subBagianId,
      @JsonKey(fromJson: _parseInt) this.nilai,
      @JsonKey(fromJson: _parseBool) this.completed,
      @JsonKey(name: 'nama_bagian') this.namaBagian,
      @JsonKey(name: 'nama_sub_bagian') this.namaSubBagian});

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int? id;
  @override
  @JsonKey(name: 'remaja_id')
  final int? remajaId;
  @override
  @JsonKey(name: 'bagian_id')
  final int? bagianId;
  @override
  @JsonKey(name: 'sub_bagian_id')
  final int? subBagianId;
  @override
  @JsonKey(fromJson: _parseInt)
  final int? nilai;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool? completed;
  @override
  @JsonKey(name: 'nama_bagian')
  final String? namaBagian;
  @override
  @JsonKey(name: 'nama_sub_bagian')
  final String? namaSubBagian;

  @override
  String toString() {
    return 'Exercise(id: $id, remajaId: $remajaId, bagianId: $bagianId, subBagianId: $subBagianId, nilai: $nilai, completed: $completed, namaBagian: $namaBagian, namaSubBagian: $namaSubBagian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.remajaId, remajaId) ||
                other.remajaId == remajaId) &&
            (identical(other.bagianId, bagianId) ||
                other.bagianId == bagianId) &&
            (identical(other.subBagianId, subBagianId) ||
                other.subBagianId == subBagianId) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.namaBagian, namaBagian) ||
                other.namaBagian == namaBagian) &&
            (identical(other.namaSubBagian, namaSubBagian) ||
                other.namaSubBagian == namaSubBagian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, remajaId, bagianId,
      subBagianId, nilai, completed, namaBagian, namaSubBagian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  factory _Exercise(
          {@JsonKey(fromJson: _parseInt) final int? id,
          @JsonKey(name: 'remaja_id') final int? remajaId,
          @JsonKey(name: 'bagian_id') final int? bagianId,
          @JsonKey(name: 'sub_bagian_id') final int? subBagianId,
          @JsonKey(fromJson: _parseInt) final int? nilai,
          @JsonKey(fromJson: _parseBool) final bool? completed,
          @JsonKey(name: 'nama_bagian') final String? namaBagian,
          @JsonKey(name: 'nama_sub_bagian') final String? namaSubBagian}) =
      _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @override
  @JsonKey(name: 'remaja_id')
  int? get remajaId;
  @override
  @JsonKey(name: 'bagian_id')
  int? get bagianId;
  @override
  @JsonKey(name: 'sub_bagian_id')
  int? get subBagianId;
  @override
  @JsonKey(fromJson: _parseInt)
  int? get nilai;
  @override
  @JsonKey(fromJson: _parseBool)
  bool? get completed;
  @override
  @JsonKey(name: 'nama_bagian')
  String? get namaBagian;
  @override
  @JsonKey(name: 'nama_sub_bagian')
  String? get namaSubBagian;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HistoryExercise _$HistoryExerciseFromJson(Map<String, dynamic> json) {
  return _HistoryExercise.fromJson(json);
}

/// @nodoc
mixin _$HistoryExercise {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'remaja_id', fromJson: _parseInt)
  int? get remajaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bagian_id', fromJson: _parseInt)
  int? get bagianId => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
  int? get subBagianId => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseInt)
  int? get nilai => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool? get completed => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_bagian')
  String? get namaBagian => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_sub_bagian')
  String? get namaSubBagian => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistoryExerciseCopyWith<HistoryExercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryExerciseCopyWith<$Res> {
  factory $HistoryExerciseCopyWith(
          HistoryExercise value, $Res Function(HistoryExercise) then) =
      _$HistoryExerciseCopyWithImpl<$Res, HistoryExercise>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'remaja_id', fromJson: _parseInt) int? remajaId,
      @JsonKey(name: 'bagian_id', fromJson: _parseInt) int? bagianId,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) int? subBagianId,
      @JsonKey(fromJson: _parseInt) int? nilai,
      @JsonKey(fromJson: _parseBool) bool? completed,
      @JsonKey(name: 'nama_bagian') String? namaBagian,
      @JsonKey(name: 'nama_sub_bagian') String? namaSubBagian});
}

/// @nodoc
class _$HistoryExerciseCopyWithImpl<$Res, $Val extends HistoryExercise>
    implements $HistoryExerciseCopyWith<$Res> {
  _$HistoryExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? remajaId = freezed,
    Object? bagianId = freezed,
    Object? subBagianId = freezed,
    Object? nilai = freezed,
    Object? completed = freezed,
    Object? namaBagian = freezed,
    Object? namaSubBagian = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remajaId: freezed == remajaId
          ? _value.remajaId
          : remajaId // ignore: cast_nullable_to_non_nullable
              as int?,
      bagianId: freezed == bagianId
          ? _value.bagianId
          : bagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      subBagianId: freezed == subBagianId
          ? _value.subBagianId
          : subBagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      namaBagian: freezed == namaBagian
          ? _value.namaBagian
          : namaBagian // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSubBagian: freezed == namaSubBagian
          ? _value.namaSubBagian
          : namaSubBagian // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryExerciseImplCopyWith<$Res>
    implements $HistoryExerciseCopyWith<$Res> {
  factory _$$HistoryExerciseImplCopyWith(_$HistoryExerciseImpl value,
          $Res Function(_$HistoryExerciseImpl) then) =
      __$$HistoryExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      @JsonKey(name: 'remaja_id', fromJson: _parseInt) int? remajaId,
      @JsonKey(name: 'bagian_id', fromJson: _parseInt) int? bagianId,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) int? subBagianId,
      @JsonKey(fromJson: _parseInt) int? nilai,
      @JsonKey(fromJson: _parseBool) bool? completed,
      @JsonKey(name: 'nama_bagian') String? namaBagian,
      @JsonKey(name: 'nama_sub_bagian') String? namaSubBagian});
}

/// @nodoc
class __$$HistoryExerciseImplCopyWithImpl<$Res>
    extends _$HistoryExerciseCopyWithImpl<$Res, _$HistoryExerciseImpl>
    implements _$$HistoryExerciseImplCopyWith<$Res> {
  __$$HistoryExerciseImplCopyWithImpl(
      _$HistoryExerciseImpl _value, $Res Function(_$HistoryExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? remajaId = freezed,
    Object? bagianId = freezed,
    Object? subBagianId = freezed,
    Object? nilai = freezed,
    Object? completed = freezed,
    Object? namaBagian = freezed,
    Object? namaSubBagian = freezed,
  }) {
    return _then(_$HistoryExerciseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      remajaId: freezed == remajaId
          ? _value.remajaId
          : remajaId // ignore: cast_nullable_to_non_nullable
              as int?,
      bagianId: freezed == bagianId
          ? _value.bagianId
          : bagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      subBagianId: freezed == subBagianId
          ? _value.subBagianId
          : subBagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      nilai: freezed == nilai
          ? _value.nilai
          : nilai // ignore: cast_nullable_to_non_nullable
              as int?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
      namaBagian: freezed == namaBagian
          ? _value.namaBagian
          : namaBagian // ignore: cast_nullable_to_non_nullable
              as String?,
      namaSubBagian: freezed == namaSubBagian
          ? _value.namaSubBagian
          : namaSubBagian // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryExerciseImpl implements _HistoryExercise {
  _$HistoryExerciseImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      @JsonKey(name: 'remaja_id', fromJson: _parseInt) this.remajaId,
      @JsonKey(name: 'bagian_id', fromJson: _parseInt) this.bagianId,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) this.subBagianId,
      @JsonKey(fromJson: _parseInt) this.nilai,
      @JsonKey(fromJson: _parseBool) this.completed,
      @JsonKey(name: 'nama_bagian') this.namaBagian,
      @JsonKey(name: 'nama_sub_bagian') this.namaSubBagian});

  factory _$HistoryExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryExerciseImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int? id;
  @override
  @JsonKey(name: 'remaja_id', fromJson: _parseInt)
  final int? remajaId;
  @override
  @JsonKey(name: 'bagian_id', fromJson: _parseInt)
  final int? bagianId;
  @override
  @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
  final int? subBagianId;
  @override
  @JsonKey(fromJson: _parseInt)
  final int? nilai;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool? completed;
  @override
  @JsonKey(name: 'nama_bagian')
  final String? namaBagian;
  @override
  @JsonKey(name: 'nama_sub_bagian')
  final String? namaSubBagian;

  @override
  String toString() {
    return 'HistoryExercise(id: $id, remajaId: $remajaId, bagianId: $bagianId, subBagianId: $subBagianId, nilai: $nilai, completed: $completed, namaBagian: $namaBagian, namaSubBagian: $namaSubBagian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.remajaId, remajaId) ||
                other.remajaId == remajaId) &&
            (identical(other.bagianId, bagianId) ||
                other.bagianId == bagianId) &&
            (identical(other.subBagianId, subBagianId) ||
                other.subBagianId == subBagianId) &&
            (identical(other.nilai, nilai) || other.nilai == nilai) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.namaBagian, namaBagian) ||
                other.namaBagian == namaBagian) &&
            (identical(other.namaSubBagian, namaSubBagian) ||
                other.namaSubBagian == namaSubBagian));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, remajaId, bagianId,
      subBagianId, nilai, completed, namaBagian, namaSubBagian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryExerciseImplCopyWith<_$HistoryExerciseImpl> get copyWith =>
      __$$HistoryExerciseImplCopyWithImpl<_$HistoryExerciseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryExerciseImplToJson(
      this,
    );
  }
}

abstract class _HistoryExercise implements HistoryExercise {
  factory _HistoryExercise(
          {@JsonKey(fromJson: _parseInt) final int? id,
          @JsonKey(name: 'remaja_id', fromJson: _parseInt) final int? remajaId,
          @JsonKey(name: 'bagian_id', fromJson: _parseInt) final int? bagianId,
          @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
          final int? subBagianId,
          @JsonKey(fromJson: _parseInt) final int? nilai,
          @JsonKey(fromJson: _parseBool) final bool? completed,
          @JsonKey(name: 'nama_bagian') final String? namaBagian,
          @JsonKey(name: 'nama_sub_bagian') final String? namaSubBagian}) =
      _$HistoryExerciseImpl;

  factory _HistoryExercise.fromJson(Map<String, dynamic> json) =
      _$HistoryExerciseImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @override
  @JsonKey(name: 'remaja_id', fromJson: _parseInt)
  int? get remajaId;
  @override
  @JsonKey(name: 'bagian_id', fromJson: _parseInt)
  int? get bagianId;
  @override
  @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
  int? get subBagianId;
  @override
  @JsonKey(fromJson: _parseInt)
  int? get nilai;
  @override
  @JsonKey(fromJson: _parseBool)
  bool? get completed;
  @override
  @JsonKey(name: 'nama_bagian')
  String? get namaBagian;
  @override
  @JsonKey(name: 'nama_sub_bagian')
  String? get namaSubBagian;
  @override
  @JsonKey(ignore: true)
  _$$HistoryExerciseImplCopyWith<_$HistoryExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataSoal _$DataSoalFromJson(Map<String, dynamic> json) {
  return _DataSoal.fromJson(json);
}

/// @nodoc
mixin _$DataSoal {
  Soal? get soal => throw _privateConstructorUsedError;
  List<Pilihan>? get pilihan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataSoalCopyWith<DataSoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataSoalCopyWith<$Res> {
  factory $DataSoalCopyWith(DataSoal value, $Res Function(DataSoal) then) =
      _$DataSoalCopyWithImpl<$Res, DataSoal>;
  @useResult
  $Res call({Soal? soal, List<Pilihan>? pilihan});

  $SoalCopyWith<$Res>? get soal;
}

/// @nodoc
class _$DataSoalCopyWithImpl<$Res, $Val extends DataSoal>
    implements $DataSoalCopyWith<$Res> {
  _$DataSoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soal = freezed,
    Object? pilihan = freezed,
  }) {
    return _then(_value.copyWith(
      soal: freezed == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as Soal?,
      pilihan: freezed == pilihan
          ? _value.pilihan
          : pilihan // ignore: cast_nullable_to_non_nullable
              as List<Pilihan>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SoalCopyWith<$Res>? get soal {
    if (_value.soal == null) {
      return null;
    }

    return $SoalCopyWith<$Res>(_value.soal!, (value) {
      return _then(_value.copyWith(soal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataSoalImplCopyWith<$Res>
    implements $DataSoalCopyWith<$Res> {
  factory _$$DataSoalImplCopyWith(
          _$DataSoalImpl value, $Res Function(_$DataSoalImpl) then) =
      __$$DataSoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Soal? soal, List<Pilihan>? pilihan});

  @override
  $SoalCopyWith<$Res>? get soal;
}

/// @nodoc
class __$$DataSoalImplCopyWithImpl<$Res>
    extends _$DataSoalCopyWithImpl<$Res, _$DataSoalImpl>
    implements _$$DataSoalImplCopyWith<$Res> {
  __$$DataSoalImplCopyWithImpl(
      _$DataSoalImpl _value, $Res Function(_$DataSoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soal = freezed,
    Object? pilihan = freezed,
  }) {
    return _then(_$DataSoalImpl(
      soal: freezed == soal
          ? _value.soal
          : soal // ignore: cast_nullable_to_non_nullable
              as Soal?,
      pilihan: freezed == pilihan
          ? _value._pilihan
          : pilihan // ignore: cast_nullable_to_non_nullable
              as List<Pilihan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataSoalImpl implements _DataSoal {
  _$DataSoalImpl({this.soal, final List<Pilihan>? pilihan})
      : _pilihan = pilihan;

  factory _$DataSoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataSoalImplFromJson(json);

  @override
  final Soal? soal;
  final List<Pilihan>? _pilihan;
  @override
  List<Pilihan>? get pilihan {
    final value = _pilihan;
    if (value == null) return null;
    if (_pilihan is EqualUnmodifiableListView) return _pilihan;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataSoal(soal: $soal, pilihan: $pilihan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataSoalImpl &&
            (identical(other.soal, soal) || other.soal == soal) &&
            const DeepCollectionEquality().equals(other._pilihan, _pilihan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, soal, const DeepCollectionEquality().hash(_pilihan));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataSoalImplCopyWith<_$DataSoalImpl> get copyWith =>
      __$$DataSoalImplCopyWithImpl<_$DataSoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataSoalImplToJson(
      this,
    );
  }
}

abstract class _DataSoal implements DataSoal {
  factory _DataSoal({final Soal? soal, final List<Pilihan>? pilihan}) =
      _$DataSoalImpl;

  factory _DataSoal.fromJson(Map<String, dynamic> json) =
      _$DataSoalImpl.fromJson;

  @override
  Soal? get soal;
  @override
  List<Pilihan>? get pilihan;
  @override
  @JsonKey(ignore: true)
  _$$DataSoalImplCopyWith<_$DataSoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Soal _$SoalFromJson(Map<String, dynamic> json) {
  return _Soal.fromJson(json);
}

/// @nodoc
mixin _$Soal {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  String? get pertanyaan => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
  int? get subBagianId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SoalCopyWith<Soal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SoalCopyWith<$Res> {
  factory $SoalCopyWith(Soal value, $Res Function(Soal) then) =
      _$SoalCopyWithImpl<$Res, Soal>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? pertanyaan,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) int? subBagianId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$SoalCopyWithImpl<$Res, $Val extends Soal>
    implements $SoalCopyWith<$Res> {
  _$SoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pertanyaan = freezed,
    Object? subBagianId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pertanyaan: freezed == pertanyaan
          ? _value.pertanyaan
          : pertanyaan // ignore: cast_nullable_to_non_nullable
              as String?,
      subBagianId: freezed == subBagianId
          ? _value.subBagianId
          : subBagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SoalImplCopyWith<$Res> implements $SoalCopyWith<$Res> {
  factory _$$SoalImplCopyWith(
          _$SoalImpl value, $Res Function(_$SoalImpl) then) =
      __$$SoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? pertanyaan,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) int? subBagianId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$SoalImplCopyWithImpl<$Res>
    extends _$SoalCopyWithImpl<$Res, _$SoalImpl>
    implements _$$SoalImplCopyWith<$Res> {
  __$$SoalImplCopyWithImpl(_$SoalImpl _value, $Res Function(_$SoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pertanyaan = freezed,
    Object? subBagianId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$SoalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pertanyaan: freezed == pertanyaan
          ? _value.pertanyaan
          : pertanyaan // ignore: cast_nullable_to_non_nullable
              as String?,
      subBagianId: freezed == subBagianId
          ? _value.subBagianId
          : subBagianId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SoalImpl implements _Soal {
  _$SoalImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      this.pertanyaan,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) this.subBagianId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$SoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$SoalImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int? id;
  @override
  final String? pertanyaan;
  @override
  @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
  final int? subBagianId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Soal(id: $id, pertanyaan: $pertanyaan, subBagianId: $subBagianId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SoalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pertanyaan, pertanyaan) ||
                other.pertanyaan == pertanyaan) &&
            (identical(other.subBagianId, subBagianId) ||
                other.subBagianId == subBagianId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pertanyaan, subBagianId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SoalImplCopyWith<_$SoalImpl> get copyWith =>
      __$$SoalImplCopyWithImpl<_$SoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SoalImplToJson(
      this,
    );
  }
}

abstract class _Soal implements Soal {
  factory _Soal(
      {@JsonKey(fromJson: _parseInt) final int? id,
      final String? pertanyaan,
      @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
      final int? subBagianId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$SoalImpl;

  factory _Soal.fromJson(Map<String, dynamic> json) = _$SoalImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @override
  String? get pertanyaan;
  @override
  @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt)
  int? get subBagianId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$SoalImplCopyWith<_$SoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Pilihan _$PilihanFromJson(Map<String, dynamic> json) {
  return _Pilihan.fromJson(json);
}

/// @nodoc
mixin _$Pilihan {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  String? get pilihan => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseInt)
  int? get skor => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _parseBool)
  bool? get benar => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'soal_id', fromJson: _parseInt)
  int? get soalId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PilihanCopyWith<Pilihan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PilihanCopyWith<$Res> {
  factory $PilihanCopyWith(Pilihan value, $Res Function(Pilihan) then) =
      _$PilihanCopyWithImpl<$Res, Pilihan>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? pilihan,
      @JsonKey(fromJson: _parseInt) int? skor,
      @JsonKey(fromJson: _parseBool) bool? benar,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'soal_id', fromJson: _parseInt) int? soalId});
}

/// @nodoc
class _$PilihanCopyWithImpl<$Res, $Val extends Pilihan>
    implements $PilihanCopyWith<$Res> {
  _$PilihanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pilihan = freezed,
    Object? skor = freezed,
    Object? benar = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? soalId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pilihan: freezed == pilihan
          ? _value.pilihan
          : pilihan // ignore: cast_nullable_to_non_nullable
              as String?,
      skor: freezed == skor
          ? _value.skor
          : skor // ignore: cast_nullable_to_non_nullable
              as int?,
      benar: freezed == benar
          ? _value.benar
          : benar // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soalId: freezed == soalId
          ? _value.soalId
          : soalId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PilihanImplCopyWith<$Res> implements $PilihanCopyWith<$Res> {
  factory _$$PilihanImplCopyWith(
          _$PilihanImpl value, $Res Function(_$PilihanImpl) then) =
      __$$PilihanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? pilihan,
      @JsonKey(fromJson: _parseInt) int? skor,
      @JsonKey(fromJson: _parseBool) bool? benar,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'soal_id', fromJson: _parseInt) int? soalId});
}

/// @nodoc
class __$$PilihanImplCopyWithImpl<$Res>
    extends _$PilihanCopyWithImpl<$Res, _$PilihanImpl>
    implements _$$PilihanImplCopyWith<$Res> {
  __$$PilihanImplCopyWithImpl(
      _$PilihanImpl _value, $Res Function(_$PilihanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pilihan = freezed,
    Object? skor = freezed,
    Object? benar = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? soalId = freezed,
  }) {
    return _then(_$PilihanImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      pilihan: freezed == pilihan
          ? _value.pilihan
          : pilihan // ignore: cast_nullable_to_non_nullable
              as String?,
      skor: freezed == skor
          ? _value.skor
          : skor // ignore: cast_nullable_to_non_nullable
              as int?,
      benar: freezed == benar
          ? _value.benar
          : benar // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      soalId: freezed == soalId
          ? _value.soalId
          : soalId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PilihanImpl implements _Pilihan {
  _$PilihanImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      this.pilihan,
      @JsonKey(fromJson: _parseInt) this.skor,
      @JsonKey(fromJson: _parseBool) this.benar,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'soal_id', fromJson: _parseInt) this.soalId});

  factory _$PilihanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PilihanImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int? id;
  @override
  final String? pilihan;
  @override
  @JsonKey(fromJson: _parseInt)
  final int? skor;
  @override
  @JsonKey(fromJson: _parseBool)
  final bool? benar;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'soal_id', fromJson: _parseInt)
  final int? soalId;

  @override
  String toString() {
    return 'Pilihan(id: $id, pilihan: $pilihan, skor: $skor, benar: $benar, createdAt: $createdAt, updatedAt: $updatedAt, soalId: $soalId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PilihanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pilihan, pilihan) || other.pilihan == pilihan) &&
            (identical(other.skor, skor) || other.skor == skor) &&
            (identical(other.benar, benar) || other.benar == benar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.soalId, soalId) || other.soalId == soalId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pilihan, skor, benar, createdAt, updatedAt, soalId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PilihanImplCopyWith<_$PilihanImpl> get copyWith =>
      __$$PilihanImplCopyWithImpl<_$PilihanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PilihanImplToJson(
      this,
    );
  }
}

abstract class _Pilihan implements Pilihan {
  factory _Pilihan(
          {@JsonKey(fromJson: _parseInt) final int? id,
          final String? pilihan,
          @JsonKey(fromJson: _parseInt) final int? skor,
          @JsonKey(fromJson: _parseBool) final bool? benar,
          @JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'soal_id', fromJson: _parseInt) final int? soalId}) =
      _$PilihanImpl;

  factory _Pilihan.fromJson(Map<String, dynamic> json) = _$PilihanImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @override
  String? get pilihan;
  @override
  @JsonKey(fromJson: _parseInt)
  int? get skor;
  @override
  @JsonKey(fromJson: _parseBool)
  bool? get benar;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'soal_id', fromJson: _parseInt)
  int? get soalId;
  @override
  @JsonKey(ignore: true)
  _$$PilihanImplCopyWith<_$PilihanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meet _$MeetFromJson(Map<String, dynamic> json) {
  return _Meet.fromJson(json);
}

/// @nodoc
mixin _$Meet {
  @JsonKey(fromJson: _parseInt)
  int? get id => throw _privateConstructorUsedError;
  String? get topik => throw _privateConstructorUsedError;
  String? get deskripsi => throw _privateConstructorUsedError;
  @JsonKey(name: 'jam_mulai')
  DateTime? get jamMulai => throw _privateConstructorUsedError;
  @JsonKey(name: 'jam_berakhir')
  DateTime? get jamBerakhir => throw _privateConstructorUsedError;
  DateTime? get tanggal => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get materi => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_remaja')
  int? get totalRemaja => throw _privateConstructorUsedError;
  @JsonKey(name: 'mentor_id')
  int? get mentorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  MeetStatus? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_lengkap')
  String? get namaLengkap => throw _privateConstructorUsedError;
  String? get gelar => throw _privateConstructorUsedError;
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  String? get riwayatPendidikanTerakhir => throw _privateConstructorUsedError;
  String? get foto => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetCopyWith<Meet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetCopyWith<$Res> {
  factory $MeetCopyWith(Meet value, $Res Function(Meet) then) =
      _$MeetCopyWithImpl<$Res, Meet>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? topik,
      String? deskripsi,
      @JsonKey(name: 'jam_mulai') DateTime? jamMulai,
      @JsonKey(name: 'jam_berakhir') DateTime? jamBerakhir,
      DateTime? tanggal,
      String? link,
      String? materi,
      @JsonKey(name: 'total_remaja') int? totalRemaja,
      @JsonKey(name: 'mentor_id') int? mentorId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      MeetStatus? status,
      @JsonKey(name: 'nama_lengkap') String? namaLengkap,
      String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      String? riwayatPendidikanTerakhir,
      String? foto});
}

/// @nodoc
class _$MeetCopyWithImpl<$Res, $Val extends Meet>
    implements $MeetCopyWith<$Res> {
  _$MeetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? topik = freezed,
    Object? deskripsi = freezed,
    Object? jamMulai = freezed,
    Object? jamBerakhir = freezed,
    Object? tanggal = freezed,
    Object? link = freezed,
    Object? materi = freezed,
    Object? totalRemaja = freezed,
    Object? mentorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? namaLengkap = freezed,
    Object? gelar = freezed,
    Object? riwayatPendidikanTerakhir = freezed,
    Object? foto = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      topik: freezed == topik
          ? _value.topik
          : topik // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      jamMulai: freezed == jamMulai
          ? _value.jamMulai
          : jamMulai // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jamBerakhir: freezed == jamBerakhir
          ? _value.jamBerakhir
          : jamBerakhir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      materi: freezed == materi
          ? _value.materi
          : materi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRemaja: freezed == totalRemaja
          ? _value.totalRemaja
          : totalRemaja // ignore: cast_nullable_to_non_nullable
              as int?,
      mentorId: freezed == mentorId
          ? _value.mentorId
          : mentorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MeetStatus?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      gelar: freezed == gelar
          ? _value.gelar
          : gelar // ignore: cast_nullable_to_non_nullable
              as String?,
      riwayatPendidikanTerakhir: freezed == riwayatPendidikanTerakhir
          ? _value.riwayatPendidikanTerakhir
          : riwayatPendidikanTerakhir // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetImplCopyWith<$Res> implements $MeetCopyWith<$Res> {
  factory _$$MeetImplCopyWith(
          _$MeetImpl value, $Res Function(_$MeetImpl) then) =
      __$$MeetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: _parseInt) int? id,
      String? topik,
      String? deskripsi,
      @JsonKey(name: 'jam_mulai') DateTime? jamMulai,
      @JsonKey(name: 'jam_berakhir') DateTime? jamBerakhir,
      DateTime? tanggal,
      String? link,
      String? materi,
      @JsonKey(name: 'total_remaja') int? totalRemaja,
      @JsonKey(name: 'mentor_id') int? mentorId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      MeetStatus? status,
      @JsonKey(name: 'nama_lengkap') String? namaLengkap,
      String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      String? riwayatPendidikanTerakhir,
      String? foto});
}

/// @nodoc
class __$$MeetImplCopyWithImpl<$Res>
    extends _$MeetCopyWithImpl<$Res, _$MeetImpl>
    implements _$$MeetImplCopyWith<$Res> {
  __$$MeetImplCopyWithImpl(_$MeetImpl _value, $Res Function(_$MeetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? topik = freezed,
    Object? deskripsi = freezed,
    Object? jamMulai = freezed,
    Object? jamBerakhir = freezed,
    Object? tanggal = freezed,
    Object? link = freezed,
    Object? materi = freezed,
    Object? totalRemaja = freezed,
    Object? mentorId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? status = freezed,
    Object? namaLengkap = freezed,
    Object? gelar = freezed,
    Object? riwayatPendidikanTerakhir = freezed,
    Object? foto = freezed,
  }) {
    return _then(_$MeetImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      topik: freezed == topik
          ? _value.topik
          : topik // ignore: cast_nullable_to_non_nullable
              as String?,
      deskripsi: freezed == deskripsi
          ? _value.deskripsi
          : deskripsi // ignore: cast_nullable_to_non_nullable
              as String?,
      jamMulai: freezed == jamMulai
          ? _value.jamMulai
          : jamMulai // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jamBerakhir: freezed == jamBerakhir
          ? _value.jamBerakhir
          : jamBerakhir // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      materi: freezed == materi
          ? _value.materi
          : materi // ignore: cast_nullable_to_non_nullable
              as String?,
      totalRemaja: freezed == totalRemaja
          ? _value.totalRemaja
          : totalRemaja // ignore: cast_nullable_to_non_nullable
              as int?,
      mentorId: freezed == mentorId
          ? _value.mentorId
          : mentorId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MeetStatus?,
      namaLengkap: freezed == namaLengkap
          ? _value.namaLengkap
          : namaLengkap // ignore: cast_nullable_to_non_nullable
              as String?,
      gelar: freezed == gelar
          ? _value.gelar
          : gelar // ignore: cast_nullable_to_non_nullable
              as String?,
      riwayatPendidikanTerakhir: freezed == riwayatPendidikanTerakhir
          ? _value.riwayatPendidikanTerakhir
          : riwayatPendidikanTerakhir // ignore: cast_nullable_to_non_nullable
              as String?,
      foto: freezed == foto
          ? _value.foto
          : foto // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetImpl implements _Meet {
  _$MeetImpl(
      {@JsonKey(fromJson: _parseInt) this.id,
      this.topik,
      this.deskripsi,
      @JsonKey(name: 'jam_mulai') this.jamMulai,
      @JsonKey(name: 'jam_berakhir') this.jamBerakhir,
      this.tanggal,
      this.link,
      this.materi,
      @JsonKey(name: 'total_remaja') this.totalRemaja,
      @JsonKey(name: 'mentor_id') this.mentorId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.status,
      @JsonKey(name: 'nama_lengkap') this.namaLengkap,
      this.gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      this.riwayatPendidikanTerakhir,
      this.foto});

  factory _$MeetImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetImplFromJson(json);

  @override
  @JsonKey(fromJson: _parseInt)
  final int? id;
  @override
  final String? topik;
  @override
  final String? deskripsi;
  @override
  @JsonKey(name: 'jam_mulai')
  final DateTime? jamMulai;
  @override
  @JsonKey(name: 'jam_berakhir')
  final DateTime? jamBerakhir;
  @override
  final DateTime? tanggal;
  @override
  final String? link;
  @override
  final String? materi;
  @override
  @JsonKey(name: 'total_remaja')
  final int? totalRemaja;
  @override
  @JsonKey(name: 'mentor_id')
  final int? mentorId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final MeetStatus? status;
  @override
  @JsonKey(name: 'nama_lengkap')
  final String? namaLengkap;
  @override
  final String? gelar;
  @override
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  final String? riwayatPendidikanTerakhir;
  @override
  final String? foto;

  @override
  String toString() {
    return 'Meet(id: $id, topik: $topik, deskripsi: $deskripsi, jamMulai: $jamMulai, jamBerakhir: $jamBerakhir, tanggal: $tanggal, link: $link, materi: $materi, totalRemaja: $totalRemaja, mentorId: $mentorId, createdAt: $createdAt, updatedAt: $updatedAt, status: $status, namaLengkap: $namaLengkap, gelar: $gelar, riwayatPendidikanTerakhir: $riwayatPendidikanTerakhir, foto: $foto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.topik, topik) || other.topik == topik) &&
            (identical(other.deskripsi, deskripsi) ||
                other.deskripsi == deskripsi) &&
            (identical(other.jamMulai, jamMulai) ||
                other.jamMulai == jamMulai) &&
            (identical(other.jamBerakhir, jamBerakhir) ||
                other.jamBerakhir == jamBerakhir) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.materi, materi) || other.materi == materi) &&
            (identical(other.totalRemaja, totalRemaja) ||
                other.totalRemaja == totalRemaja) &&
            (identical(other.mentorId, mentorId) ||
                other.mentorId == mentorId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.namaLengkap, namaLengkap) ||
                other.namaLengkap == namaLengkap) &&
            (identical(other.gelar, gelar) || other.gelar == gelar) &&
            (identical(other.riwayatPendidikanTerakhir,
                    riwayatPendidikanTerakhir) ||
                other.riwayatPendidikanTerakhir == riwayatPendidikanTerakhir) &&
            (identical(other.foto, foto) || other.foto == foto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      topik,
      deskripsi,
      jamMulai,
      jamBerakhir,
      tanggal,
      link,
      materi,
      totalRemaja,
      mentorId,
      createdAt,
      updatedAt,
      status,
      namaLengkap,
      gelar,
      riwayatPendidikanTerakhir,
      foto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetImplCopyWith<_$MeetImpl> get copyWith =>
      __$$MeetImplCopyWithImpl<_$MeetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetImplToJson(
      this,
    );
  }
}

abstract class _Meet implements Meet {
  factory _Meet(
      {@JsonKey(fromJson: _parseInt) final int? id,
      final String? topik,
      final String? deskripsi,
      @JsonKey(name: 'jam_mulai') final DateTime? jamMulai,
      @JsonKey(name: 'jam_berakhir') final DateTime? jamBerakhir,
      final DateTime? tanggal,
      final String? link,
      final String? materi,
      @JsonKey(name: 'total_remaja') final int? totalRemaja,
      @JsonKey(name: 'mentor_id') final int? mentorId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final MeetStatus? status,
      @JsonKey(name: 'nama_lengkap') final String? namaLengkap,
      final String? gelar,
      @JsonKey(name: 'riwayat_pendidikan_terakhir')
      final String? riwayatPendidikanTerakhir,
      final String? foto}) = _$MeetImpl;

  factory _Meet.fromJson(Map<String, dynamic> json) = _$MeetImpl.fromJson;

  @override
  @JsonKey(fromJson: _parseInt)
  int? get id;
  @override
  String? get topik;
  @override
  String? get deskripsi;
  @override
  @JsonKey(name: 'jam_mulai')
  DateTime? get jamMulai;
  @override
  @JsonKey(name: 'jam_berakhir')
  DateTime? get jamBerakhir;
  @override
  DateTime? get tanggal;
  @override
  String? get link;
  @override
  String? get materi;
  @override
  @JsonKey(name: 'total_remaja')
  int? get totalRemaja;
  @override
  @JsonKey(name: 'mentor_id')
  int? get mentorId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  MeetStatus? get status;
  @override
  @JsonKey(name: 'nama_lengkap')
  String? get namaLengkap;
  @override
  String? get gelar;
  @override
  @JsonKey(name: 'riwayat_pendidikan_terakhir')
  String? get riwayatPendidikanTerakhir;
  @override
  String? get foto;
  @override
  @JsonKey(ignore: true)
  _$$MeetImplCopyWith<_$MeetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatbotData _$ChatbotDataFromJson(Map<String, dynamic> json) {
  return _ChatbotData.fromJson(json);
}

/// @nodoc
mixin _$ChatbotData {
  String get text => throw _privateConstructorUsedError;
  set text(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sender')
  bool get isSender => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sender')
  set isSender(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_at')
  DateTime get sentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_at')
  set sentAt(DateTime value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatbotDataCopyWith<ChatbotData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotDataCopyWith<$Res> {
  factory $ChatbotDataCopyWith(
          ChatbotData value, $Res Function(ChatbotData) then) =
      _$ChatbotDataCopyWithImpl<$Res, ChatbotData>;
  @useResult
  $Res call(
      {String text,
      @JsonKey(name: 'is_sender') bool isSender,
      @JsonKey(name: 'sent_at') DateTime sentAt});
}

/// @nodoc
class _$ChatbotDataCopyWithImpl<$Res, $Val extends ChatbotData>
    implements $ChatbotDataCopyWith<$Res> {
  _$ChatbotDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isSender = null,
    Object? sentAt = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatbotDataImplCopyWith<$Res>
    implements $ChatbotDataCopyWith<$Res> {
  factory _$$ChatbotDataImplCopyWith(
          _$ChatbotDataImpl value, $Res Function(_$ChatbotDataImpl) then) =
      __$$ChatbotDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      @JsonKey(name: 'is_sender') bool isSender,
      @JsonKey(name: 'sent_at') DateTime sentAt});
}

/// @nodoc
class __$$ChatbotDataImplCopyWithImpl<$Res>
    extends _$ChatbotDataCopyWithImpl<$Res, _$ChatbotDataImpl>
    implements _$$ChatbotDataImplCopyWith<$Res> {
  __$$ChatbotDataImplCopyWithImpl(
      _$ChatbotDataImpl _value, $Res Function(_$ChatbotDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isSender = null,
    Object? sentAt = null,
  }) {
    return _then(_$ChatbotDataImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatbotDataImpl implements _ChatbotData {
  _$ChatbotDataImpl(
      {required this.text,
      @JsonKey(name: 'is_sender') required this.isSender,
      @JsonKey(name: 'sent_at') required this.sentAt});

  factory _$ChatbotDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatbotDataImplFromJson(json);

  @override
  String text;
  @override
  @JsonKey(name: 'is_sender')
  bool isSender;
  @override
  @JsonKey(name: 'sent_at')
  DateTime sentAt;

  @override
  String toString() {
    return 'ChatbotData(text: $text, isSender: $isSender, sentAt: $sentAt)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatbotDataImplCopyWith<_$ChatbotDataImpl> get copyWith =>
      __$$ChatbotDataImplCopyWithImpl<_$ChatbotDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatbotDataImplToJson(
      this,
    );
  }
}

abstract class _ChatbotData implements ChatbotData {
  factory _ChatbotData(
      {required String text,
      @JsonKey(name: 'is_sender') required bool isSender,
      @JsonKey(name: 'sent_at') required DateTime sentAt}) = _$ChatbotDataImpl;

  factory _ChatbotData.fromJson(Map<String, dynamic> json) =
      _$ChatbotDataImpl.fromJson;

  @override
  String get text;
  set text(String value);
  @override
  @JsonKey(name: 'is_sender')
  bool get isSender;
  @JsonKey(name: 'is_sender')
  set isSender(bool value);
  @override
  @JsonKey(name: 'sent_at')
  DateTime get sentAt;
  @JsonKey(name: 'sent_at')
  set sentAt(DateTime value);
  @override
  @JsonKey(ignore: true)
  _$$ChatbotDataImplCopyWith<_$ChatbotDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageBubbleList {
  List<List<MessageBubbleData>> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageBubbleListCopyWith<MessageBubbleList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBubbleListCopyWith<$Res> {
  factory $MessageBubbleListCopyWith(
          MessageBubbleList value, $Res Function(MessageBubbleList) then) =
      _$MessageBubbleListCopyWithImpl<$Res, MessageBubbleList>;
  @useResult
  $Res call({List<List<MessageBubbleData>> data});
}

/// @nodoc
class _$MessageBubbleListCopyWithImpl<$Res, $Val extends MessageBubbleList>
    implements $MessageBubbleListCopyWith<$Res> {
  _$MessageBubbleListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<List<MessageBubbleData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageBubbleListImplCopyWith<$Res>
    implements $MessageBubbleListCopyWith<$Res> {
  factory _$$MessageBubbleListImplCopyWith(_$MessageBubbleListImpl value,
          $Res Function(_$MessageBubbleListImpl) then) =
      __$$MessageBubbleListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<List<MessageBubbleData>> data});
}

/// @nodoc
class __$$MessageBubbleListImplCopyWithImpl<$Res>
    extends _$MessageBubbleListCopyWithImpl<$Res, _$MessageBubbleListImpl>
    implements _$$MessageBubbleListImplCopyWith<$Res> {
  __$$MessageBubbleListImplCopyWithImpl(_$MessageBubbleListImpl _value,
      $Res Function(_$MessageBubbleListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MessageBubbleListImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<List<MessageBubbleData>>,
    ));
  }
}

/// @nodoc

class _$MessageBubbleListImpl implements _MessageBubbleList {
  const _$MessageBubbleListImpl(
      {required final List<List<MessageBubbleData>> data})
      : _data = data;

  final List<List<MessageBubbleData>> _data;
  @override
  List<List<MessageBubbleData>> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MessageBubbleList(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBubbleListImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBubbleListImplCopyWith<_$MessageBubbleListImpl> get copyWith =>
      __$$MessageBubbleListImplCopyWithImpl<_$MessageBubbleListImpl>(
          this, _$identity);
}

abstract class _MessageBubbleList implements MessageBubbleList {
  const factory _MessageBubbleList(
          {required final List<List<MessageBubbleData>> data}) =
      _$MessageBubbleListImpl;

  @override
  List<List<MessageBubbleData>> get data;
  @override
  @JsonKey(ignore: true)
  _$$MessageBubbleListImplCopyWith<_$MessageBubbleListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageBubbleData _$MessageBubbleDataFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'dateTime':
      return MessageBubbleDataDateTime.fromJson(json);
    case 'text':
      return MessageBubbleDataText.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'MessageBubbleData',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$MessageBubbleData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? dateTime) dateTime,
    required TResult Function(String? message, DateTime? sentAt, bool isSender)
        text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? dateTime)? dateTime,
    TResult? Function(String? message, DateTime? sentAt, bool isSender)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? dateTime)? dateTime,
    TResult Function(String? message, DateTime? sentAt, bool isSender)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageBubbleDataDateTime value) dateTime,
    required TResult Function(MessageBubbleDataText value) text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageBubbleDataDateTime value)? dateTime,
    TResult? Function(MessageBubbleDataText value)? text,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageBubbleDataDateTime value)? dateTime,
    TResult Function(MessageBubbleDataText value)? text,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageBubbleDataCopyWith<$Res> {
  factory $MessageBubbleDataCopyWith(
          MessageBubbleData value, $Res Function(MessageBubbleData) then) =
      _$MessageBubbleDataCopyWithImpl<$Res, MessageBubbleData>;
}

/// @nodoc
class _$MessageBubbleDataCopyWithImpl<$Res, $Val extends MessageBubbleData>
    implements $MessageBubbleDataCopyWith<$Res> {
  _$MessageBubbleDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessageBubbleDataDateTimeImplCopyWith<$Res> {
  factory _$$MessageBubbleDataDateTimeImplCopyWith(
          _$MessageBubbleDataDateTimeImpl value,
          $Res Function(_$MessageBubbleDataDateTimeImpl) then) =
      __$$MessageBubbleDataDateTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? dateTime});
}

/// @nodoc
class __$$MessageBubbleDataDateTimeImplCopyWithImpl<$Res>
    extends _$MessageBubbleDataCopyWithImpl<$Res,
        _$MessageBubbleDataDateTimeImpl>
    implements _$$MessageBubbleDataDateTimeImplCopyWith<$Res> {
  __$$MessageBubbleDataDateTimeImplCopyWithImpl(
      _$MessageBubbleDataDateTimeImpl _value,
      $Res Function(_$MessageBubbleDataDateTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = freezed,
  }) {
    return _then(_$MessageBubbleDataDateTimeImpl(
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageBubbleDataDateTimeImpl implements MessageBubbleDataDateTime {
  const _$MessageBubbleDataDateTimeImpl({this.dateTime, final String? $type})
      : $type = $type ?? 'dateTime';

  factory _$MessageBubbleDataDateTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageBubbleDataDateTimeImplFromJson(json);

  @override
  final DateTime? dateTime;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageBubbleData.dateTime(dateTime: $dateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBubbleDataDateTimeImpl &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBubbleDataDateTimeImplCopyWith<_$MessageBubbleDataDateTimeImpl>
      get copyWith => __$$MessageBubbleDataDateTimeImplCopyWithImpl<
          _$MessageBubbleDataDateTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? dateTime) dateTime,
    required TResult Function(String? message, DateTime? sentAt, bool isSender)
        text,
  }) {
    return dateTime(this.dateTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? dateTime)? dateTime,
    TResult? Function(String? message, DateTime? sentAt, bool isSender)? text,
  }) {
    return dateTime?.call(this.dateTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? dateTime)? dateTime,
    TResult Function(String? message, DateTime? sentAt, bool isSender)? text,
    required TResult orElse(),
  }) {
    if (dateTime != null) {
      return dateTime(this.dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageBubbleDataDateTime value) dateTime,
    required TResult Function(MessageBubbleDataText value) text,
  }) {
    return dateTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageBubbleDataDateTime value)? dateTime,
    TResult? Function(MessageBubbleDataText value)? text,
  }) {
    return dateTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageBubbleDataDateTime value)? dateTime,
    TResult Function(MessageBubbleDataText value)? text,
    required TResult orElse(),
  }) {
    if (dateTime != null) {
      return dateTime(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageBubbleDataDateTimeImplToJson(
      this,
    );
  }
}

abstract class MessageBubbleDataDateTime implements MessageBubbleData {
  const factory MessageBubbleDataDateTime({final DateTime? dateTime}) =
      _$MessageBubbleDataDateTimeImpl;

  factory MessageBubbleDataDateTime.fromJson(Map<String, dynamic> json) =
      _$MessageBubbleDataDateTimeImpl.fromJson;

  DateTime? get dateTime;
  @JsonKey(ignore: true)
  _$$MessageBubbleDataDateTimeImplCopyWith<_$MessageBubbleDataDateTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageBubbleDataTextImplCopyWith<$Res> {
  factory _$$MessageBubbleDataTextImplCopyWith(
          _$MessageBubbleDataTextImpl value,
          $Res Function(_$MessageBubbleDataTextImpl) then) =
      __$$MessageBubbleDataTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message, DateTime? sentAt, bool isSender});
}

/// @nodoc
class __$$MessageBubbleDataTextImplCopyWithImpl<$Res>
    extends _$MessageBubbleDataCopyWithImpl<$Res, _$MessageBubbleDataTextImpl>
    implements _$$MessageBubbleDataTextImplCopyWith<$Res> {
  __$$MessageBubbleDataTextImplCopyWithImpl(_$MessageBubbleDataTextImpl _value,
      $Res Function(_$MessageBubbleDataTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? sentAt = freezed,
    Object? isSender = null,
  }) {
    return _then(_$MessageBubbleDataTextImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSender: null == isSender
          ? _value.isSender
          : isSender // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageBubbleDataTextImpl implements MessageBubbleDataText {
  const _$MessageBubbleDataTextImpl(
      {this.message, this.sentAt, this.isSender = true, final String? $type})
      : $type = $type ?? 'text';

  factory _$MessageBubbleDataTextImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageBubbleDataTextImplFromJson(json);

  @override
  final String? message;
  @override
  final DateTime? sentAt;
  @override
  @JsonKey()
  final bool isSender;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'MessageBubbleData.text(message: $message, sentAt: $sentAt, isSender: $isSender)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageBubbleDataTextImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isSender, isSender) ||
                other.isSender == isSender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, sentAt, isSender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageBubbleDataTextImplCopyWith<_$MessageBubbleDataTextImpl>
      get copyWith => __$$MessageBubbleDataTextImplCopyWithImpl<
          _$MessageBubbleDataTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime? dateTime) dateTime,
    required TResult Function(String? message, DateTime? sentAt, bool isSender)
        text,
  }) {
    return text(message, sentAt, isSender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime? dateTime)? dateTime,
    TResult? Function(String? message, DateTime? sentAt, bool isSender)? text,
  }) {
    return text?.call(message, sentAt, isSender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime? dateTime)? dateTime,
    TResult Function(String? message, DateTime? sentAt, bool isSender)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(message, sentAt, isSender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageBubbleDataDateTime value) dateTime,
    required TResult Function(MessageBubbleDataText value) text,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessageBubbleDataDateTime value)? dateTime,
    TResult? Function(MessageBubbleDataText value)? text,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageBubbleDataDateTime value)? dateTime,
    TResult Function(MessageBubbleDataText value)? text,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageBubbleDataTextImplToJson(
      this,
    );
  }
}

abstract class MessageBubbleDataText implements MessageBubbleData {
  const factory MessageBubbleDataText(
      {final String? message,
      final DateTime? sentAt,
      final bool isSender}) = _$MessageBubbleDataTextImpl;

  factory MessageBubbleDataText.fromJson(Map<String, dynamic> json) =
      _$MessageBubbleDataTextImpl.fromJson;

  String? get message;
  DateTime? get sentAt;
  bool get isSender;
  @JsonKey(ignore: true)
  _$$MessageBubbleDataTextImplCopyWith<_$MessageBubbleDataTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}
