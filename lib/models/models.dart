import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.g.dart';
part 'models.freezed.dart';

int? _parseInt(dynamic value) => value is String? && value != null
    ? int.tryParse(value)
    : value is int
        ? value
        : null;

@unfreezed
class User with _$User {
  factory User({
    @JsonKey(fromJson: _parseInt) int? id,
    String? name,
    String? email,
    @JsonKey(name: 'email_verified_at') DateTime? emailVerifiedAt,
    UserRole? role,
    String? foto,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updateAt,
    UserDetail? detail,
    @JsonKey(includeFromJson: false, includeToJson: false) Uint8List? imageData,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@Freezed(
  unionKey: 'role',
  equal: false,
  addImplicitFinal: false,
  makeCollectionsUnmodifiable: false,
)
sealed class UserDetail with _$UserDetail {
  @FreezedUnionValue('Remaja')
  factory UserDetail.remaja({
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
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = Remaja;

  @FreezedUnionValue('Mentor')
  factory UserDetail.mentor({
    String? nama,
    String? gelar,
    @JsonKey(name: 'riwayat_pendidikan_terakhir') String? riwayatPendidikanTerakhir,
  }) = Mentor;

  @FreezedUnionValue('Parent')
  factory UserDetail.orangTua({
    @JsonKey(fromJson: _parseInt) int? id,
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    String? kode,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = OrangTua;

  factory UserDetail.fromJson(Map<String, dynamic> json) => _$UserDetailFromJson(json);
}

@freezed
class Leaderboard with _$Leaderboard {
  factory Leaderboard({
    @JsonKey(fromJson: _parseInt) int? id,
    String? name,
    @JsonKey(fromJson: _parseInt) int? exp,
    @JsonKey(fromJson: _parseInt) int? star,
    String? foto,
  }) = _Leaderboard;

  factory Leaderboard.fromJson(Map<String, dynamic> json) => _$LeaderboardFromJson(json);
}

enum UserRole {
  @JsonValue('Remaja')
  remaja,
  @JsonValue('Mentor')
  mentor,
  @JsonValue('Parent')
  parent;

  String get text => switch (this) {
        remaja => 'Remaja',
        mentor => 'Mentor',
        parent => 'Orang Tua',
      };
}
