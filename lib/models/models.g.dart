// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: _parseInt(json['id']),
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'] == null
          ? null
          : DateTime.parse(json['email_verified_at'] as String),
      role: $enumDecodeNullable(_$UserRoleEnumMap, json['role']),
      foto: json['foto'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updateAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      detail: json['detail'] == null
          ? null
          : UserDetail.fromJson(json['detail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt?.toIso8601String(),
      'role': _$UserRoleEnumMap[instance.role],
      'foto': instance.foto,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updateAt?.toIso8601String(),
      'detail': instance.detail,
    };

const _$UserRoleEnumMap = {
  UserRole.remaja: 'Remaja',
  UserRole.mentor: 'Mentor',
  UserRole.parent: 'Parent',
};

_$RemajaImpl _$$RemajaImplFromJson(Map<String, dynamic> json) => _$RemajaImpl(
      id: _parseInt(json['id']),
      namaOrangTua: json['nama_orang_tua'] as String?,
      exp: _parseInt(json['exp']),
      star: _parseInt(json['star']),
      level: _parseInt(json['level']),
      kodeOrangTua: json['kode_orang_tua'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      orangTuaId: (json['orang_tua_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$RemajaImplToJson(_$RemajaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_orang_tua': instance.namaOrangTua,
      'exp': instance.exp,
      'star': instance.star,
      'level': instance.level,
      'kode_orang_tua': instance.kodeOrangTua,
      'user_id': instance.userId,
      'username': instance.username,
      'orang_tua_id': instance.orangTuaId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

_$MentorImpl _$$MentorImplFromJson(Map<String, dynamic> json) => _$MentorImpl(
      nama: json['nama'] as String?,
      gelar: json['gelar'] as String?,
      riwayatPendidikanTerakhir: json['riwayat_pendidikan_terakhir'] as String?,
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$MentorImplToJson(_$MentorImpl instance) =>
    <String, dynamic>{
      'nama': instance.nama,
      'gelar': instance.gelar,
      'riwayat_pendidikan_terakhir': instance.riwayatPendidikanTerakhir,
      'role': instance.$type,
    };

_$OrangTuaImpl _$$OrangTuaImplFromJson(Map<String, dynamic> json) =>
    _$OrangTuaImpl(
      id: _parseInt(json['id']),
      namaLengkap: json['nama_lengkap'] as String?,
      kode: json['kode'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      $type: json['role'] as String?,
    );

Map<String, dynamic> _$$OrangTuaImplToJson(_$OrangTuaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nama_lengkap': instance.namaLengkap,
      'kode': instance.kode,
      'user_id': instance.userId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'role': instance.$type,
    };

_$LeaderboardImpl _$$LeaderboardImplFromJson(Map<String, dynamic> json) =>
    _$LeaderboardImpl(
      id: _parseInt(json['id']),
      name: json['name'] as String?,
      exp: _parseInt(json['exp']),
      star: _parseInt(json['star']),
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$$LeaderboardImplToJson(_$LeaderboardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'exp': instance.exp,
      'star': instance.star,
      'foto': instance.foto,
    };

_$ExerciseImpl _$$ExerciseImplFromJson(Map<String, dynamic> json) =>
    _$ExerciseImpl(
      id: _parseInt(json['id']),
      remajaId: (json['remaja_id'] as num?)?.toInt(),
      bagianId: (json['bagian_id'] as num?)?.toInt(),
      subBagianId: (json['sub_bagian_id'] as num?)?.toInt(),
      nilai: _parseInt(json['nilai']),
      completed: _parseBool(json['completed']),
      namaBagian: json['nama_bagian'] as String?,
      namaSubBagian: json['nama_sub_bagian'] as String?,
    );

Map<String, dynamic> _$$ExerciseImplToJson(_$ExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'remaja_id': instance.remajaId,
      'bagian_id': instance.bagianId,
      'sub_bagian_id': instance.subBagianId,
      'nilai': instance.nilai,
      'completed': instance.completed,
      'nama_bagian': instance.namaBagian,
      'nama_sub_bagian': instance.namaSubBagian,
    };

_$HistoryExerciseImpl _$$HistoryExerciseImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryExerciseImpl(
      id: _parseInt(json['id']),
      remajaId: _parseInt(json['remaja_id']),
      bagianId: _parseInt(json['bagian_id']),
      subBagianId: _parseInt(json['sub_bagian_id']),
      nilai: _parseInt(json['nilai']),
      completed: _parseBool(json['completed']),
      namaBagian: json['nama_bagian'] as String?,
      namaSubBagian: json['nama_sub_bagian'] as String?,
    );

Map<String, dynamic> _$$HistoryExerciseImplToJson(
        _$HistoryExerciseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'remaja_id': instance.remajaId,
      'bagian_id': instance.bagianId,
      'sub_bagian_id': instance.subBagianId,
      'nilai': instance.nilai,
      'completed': instance.completed,
      'nama_bagian': instance.namaBagian,
      'nama_sub_bagian': instance.namaSubBagian,
    };

_$DataSoalImpl _$$DataSoalImplFromJson(Map<String, dynamic> json) =>
    _$DataSoalImpl(
      soal: json['soal'] == null
          ? null
          : Soal.fromJson(json['soal'] as Map<String, dynamic>),
      pilihan: (json['pilihan'] as List<dynamic>?)
          ?.map((e) => Pilihan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataSoalImplToJson(_$DataSoalImpl instance) =>
    <String, dynamic>{
      'soal': instance.soal,
      'pilihan': instance.pilihan,
    };

_$SoalImpl _$$SoalImplFromJson(Map<String, dynamic> json) => _$SoalImpl(
      id: _parseInt(json['id']),
      pertanyaan: json['pertanyaan'] as String?,
      subBagianId: _parseInt(json['sub_bagian_id']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$SoalImplToJson(_$SoalImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pertanyaan': instance.pertanyaan,
      'sub_bagian_id': instance.subBagianId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$PilihanImpl _$$PilihanImplFromJson(Map<String, dynamic> json) =>
    _$PilihanImpl(
      id: _parseInt(json['id']),
      pilihan: json['pilihan'] as String?,
      skor: _parseInt(json['skor']),
      benar: _parseBool(json['benar']),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      soalId: _parseInt(json['soal_id']),
    );

Map<String, dynamic> _$$PilihanImplToJson(_$PilihanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pilihan': instance.pilihan,
      'skor': instance.skor,
      'benar': instance.benar,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'soal_id': instance.soalId,
    };

_$MeetImpl _$$MeetImplFromJson(Map<String, dynamic> json) => _$MeetImpl(
      id: _parseInt(json['id']),
      topik: json['topik'] as String?,
      deskripsi: json['deskripsi'] as String?,
      jamMulai: json['jam_mulai'] == null
          ? null
          : DateTime.parse(json['jam_mulai'] as String),
      jamBerakhir: json['jam_berakhir'] == null
          ? null
          : DateTime.parse(json['jam_berakhir'] as String),
      tanggal: json['tanggal'] == null
          ? null
          : DateTime.parse(json['tanggal'] as String),
      link: json['link'] as String?,
      materi: json['materi'] as String?,
      totalRemaja: (json['total_remaja'] as num?)?.toInt(),
      mentorId: (json['mentor_id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      status: $enumDecodeNullable(_$MeetStatusEnumMap, json['status']),
      namaLengkap: json['nama_lengkap'] as String?,
      gelar: json['gelar'] as String?,
      riwayatPendidikanTerakhir: json['riwayat_pendidikan_terakhir'] as String?,
      foto: json['foto'] as String?,
    );

Map<String, dynamic> _$$MeetImplToJson(_$MeetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'topik': instance.topik,
      'deskripsi': instance.deskripsi,
      'jam_mulai': instance.jamMulai?.toIso8601String(),
      'jam_berakhir': instance.jamBerakhir?.toIso8601String(),
      'tanggal': instance.tanggal?.toIso8601String(),
      'link': instance.link,
      'materi': instance.materi,
      'total_remaja': instance.totalRemaja,
      'mentor_id': instance.mentorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'status': _$MeetStatusEnumMap[instance.status],
      'nama_lengkap': instance.namaLengkap,
      'gelar': instance.gelar,
      'riwayat_pendidikan_terakhir': instance.riwayatPendidikanTerakhir,
      'foto': instance.foto,
    };

const _$MeetStatusEnumMap = {
  MeetStatus.sudahDipublish: 'Sudah dipublish',
  MeetStatus.belumDipublish: 'Belum dipublish',
};

_$ChatbotDataImpl _$$ChatbotDataImplFromJson(Map<String, dynamic> json) =>
    _$ChatbotDataImpl(
      text: json['text'] as String,
      isSender: json['is_sender'] as bool,
      sentAt: DateTime.parse(json['sent_at'] as String),
    );

Map<String, dynamic> _$$ChatbotDataImplToJson(_$ChatbotDataImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'is_sender': instance.isSender,
      'sent_at': instance.sentAt.toIso8601String(),
    };

_$MessageBubbleDataDateTimeImpl _$$MessageBubbleDataDateTimeImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageBubbleDataDateTimeImpl(
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageBubbleDataDateTimeImplToJson(
        _$MessageBubbleDataDateTimeImpl instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime?.toIso8601String(),
      'runtimeType': instance.$type,
    };

_$MessageBubbleDataTextImpl _$$MessageBubbleDataTextImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageBubbleDataTextImpl(
      message: json['message'] as String?,
      sentAt: json['sentAt'] == null
          ? null
          : DateTime.parse(json['sentAt'] as String),
      isSender: json['isSender'] as bool? ?? true,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MessageBubbleDataTextImplToJson(
        _$MessageBubbleDataTextImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sentAt': instance.sentAt?.toIso8601String(),
      'isSender': instance.isSender,
      'runtimeType': instance.$type,
    };
