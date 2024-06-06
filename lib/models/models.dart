import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.g.dart';
part 'models.freezed.dart';

bool? _parseBool(dynamic data) => data is int? && data != null
    ? data == 1
    : data is bool
        ? data
        : null;
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

@freezed
class Exercise with _$Exercise {
  factory Exercise({
    @JsonKey(fromJson: _parseInt) int? id,
    @JsonKey(name: 'remaja_id') int? remajaId,
    @JsonKey(name: 'bagian_id') int? bagianId,
    @JsonKey(name: 'sub_bagian_id') int? subBagianId,
    @JsonKey(fromJson: _parseInt) int? nilai,
    @JsonKey(fromJson: _parseBool) bool? completed,
    @JsonKey(name: 'nama_bagian') String? namaBagian,
    @JsonKey(name: 'nama_sub_bagian') String? namaSubBagian,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}

@freezed
class HistoryExercise with _$HistoryExercise {
  factory HistoryExercise({
    @JsonKey(fromJson: _parseInt) int? id,
    @JsonKey(name: 'remaja_id', fromJson: _parseInt) int? remajaId,
    @JsonKey(name: 'bagian_id', fromJson: _parseInt) int? bagianId,
    @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) int? subBagianId,
    @JsonKey(fromJson: _parseInt) int? nilai,
    @JsonKey(fromJson: _parseBool) bool? completed,
    @JsonKey(name: 'nama_bagian') String? namaBagian,
    @JsonKey(name: 'nama_sub_bagian') String? namaSubBagian,
  }) = _HistoryExercise;

  factory HistoryExercise.fromJson(Map<String, dynamic> json) => _$HistoryExerciseFromJson(json);
}

@freezed
class DataSoal with _$DataSoal {
  factory DataSoal({
    Soal? soal,
    List<Pilihan>? pilihan,
  }) = _DataSoal;

  factory DataSoal.fromJson(Map<String, dynamic> json) => _$DataSoalFromJson(json);
}

@freezed
class Soal with _$Soal {
  factory Soal({
    @JsonKey(fromJson: _parseInt) int? id,
    String? pertanyaan,
    @JsonKey(name: 'sub_bagian_id', fromJson: _parseInt) int? subBagianId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Soal;

  factory Soal.fromJson(Map<String, dynamic> json) => _$SoalFromJson(json);
}

@freezed
class Pilihan with _$Pilihan {
  factory Pilihan({
    @JsonKey(fromJson: _parseInt) int? id,
    String? pilihan,
    @JsonKey(fromJson: _parseInt) int? skor,
    @JsonKey(fromJson: _parseBool) bool? benar,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'soal_id', fromJson: _parseInt) int? soalId,
  }) = _Pilihan;

  factory Pilihan.fromJson(Map<String, dynamic> json) => _$PilihanFromJson(json);
}

@freezed
class Meet with _$Meet {
  factory Meet({
    @JsonKey(fromJson: _parseInt) int? id,
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
    @JsonKey(name: 'riwayat_pendidikan_terakhir') String? riwayatPendidikanTerakhir,
    String? foto,
  }) = _Meet;

  factory Meet.fromJson(Map<String, dynamic> json) => _$MeetFromJson(json);
}

@unfreezed
class ChatbotData with _$ChatbotData {
  factory ChatbotData({
    required String text,
    @JsonKey(name: 'is_sender') required bool isSender,
    @JsonKey(name: 'sent_at') required DateTime sentAt,
  }) = _ChatbotData;

  factory ChatbotData.fromJson(Map<String, dynamic> json) => _$ChatbotDataFromJson(json);
}

@freezed
class MessageBubbleList with _$MessageBubbleList {
  const factory MessageBubbleList({required List<List<MessageBubbleData>> data}) = _MessageBubbleList;

  factory MessageBubbleList.fromChatbotData({required List<ChatbotData> chatbotData}) {
    List<List<MessageBubbleData>> results = [];
    List<MessageBubbleData> messageBubbles = [];

    for (ChatbotData data in chatbotData) {
      DateTime? lastDate;
      DateTime currentDate = data.sentAt;

      // ignore: unnecessary_null_comparison
      if (lastDate != null && (currentDate.day != lastDate.day || currentDate.month != lastDate.month || currentDate.year != lastDate.year)) messageBubbles.add(MessageBubbleData.dateTime(dateTime: lastDate));

      messageBubbles.add(
        MessageBubbleData.text(
          message: data.text,
          isSender: data.isSender,
          sentAt: data.sentAt,
        ),
      );

      lastDate = data.sentAt;
    }

    results.add(messageBubbles);

    return MessageBubbleList(data: results);
  }

  // factory MessageBubbleList.fromRoom({required List<RoomChatMe> rooms}) {
  //   List<List<MessageBubbleData>> results = [];

  //   for (RoomChatMe room in rooms) {
  //     List<MessageBubbleData> messageBubbles = [];
  //     DateTime? lastDate;

  //     for (int i = 0; i < (room.riwayats?.length ?? 0); i++) {
  //       RiwayatChatMe riwayat = room.riwayats![i];
  //       List<int?>? waktuChat = riwayat.waktuChat?.split(':').map((e) => int.tryParse(e)).toList();
  //       DateTime currentChatDate = DateTime(riwayat.tglChat!.year, riwayat.tglChat!.month, riwayat.tglChat!.day, waktuChat?[0] ?? 0, waktuChat?[1] ?? 0, waktuChat?[2] ?? 0);

  //       if (lastDate != null && (currentChatDate.day != lastDate.day || currentChatDate.month != lastDate.month || currentChatDate.year != lastDate.year)) messageBubbles.add(MessageBubbleData.dateTime(dateTime: lastDate));

  //       messageBubbles.add(MessageBubbleData.text(
  //         message: riwayat.pesan,
  //         sentAt: currentChatDate,
  //         isSender: riwayat.userId == currentUser?.idUser,
  //       ));

  //       if (i == room.riwayats!.length - 1) messageBubbles.add(MessageBubbleData.dateTime(dateTime: currentChatDate));

  //       lastDate = currentChatDate;
  //     }

  //     results.add(messageBubbles);
  //   }

  //   return MessageBubbleList(data: results);
  // }

  // factory MessageBubbleList.fromTanyaAhli({required List<TanyaAhli> tanyaAhlis}) {
  //   List<List<MessageBubbleData>> results = [];

  //   for (TanyaAhli tanyaAhli in tanyaAhlis) {
  //     List<MessageBubbleData> messageBubbles = [];
  //     DateTime? lastDate;

  //     if (tanyaAhli.jawabanAhli != null) {
  //       lastDate = tanyaAhli.jawabanAhli!.waktuJawaban;

  //       messageBubbles.add(MessageBubbleData.text(
  //         message: tanyaAhli.jawabanAhli?.jawabanAhli,
  //         sentAt: lastDate,
  //       ));
  //     }

  //     DateTime currentChatDate = tanyaAhli.waktuTanya!;

  //     if (lastDate != null && (currentChatDate.day != lastDate.day || currentChatDate.month != lastDate.month || currentChatDate.year != lastDate.year)) messageBubbles.add(MessageBubbleData.dateTime(dateTime: lastDate));

  //     messageBubbles.add(MessageBubbleData.text(
  //       message: tanyaAhli.pertanyaan,
  //       sentAt: currentChatDate,
  //       isSender: false,
  //     ));

  //     results.add(messageBubbles);
  //   }

  //   return MessageBubbleList(data: results);
  // }
}

@freezed
sealed class MessageBubbleData with _$MessageBubbleData {
  const factory MessageBubbleData.dateTime({
    DateTime? dateTime,
  }) = MessageBubbleDataDateTime;

  const factory MessageBubbleData.text({
    String? message,
    DateTime? sentAt,
    @Default(true) bool isSender,
  }) = MessageBubbleDataText;

  factory MessageBubbleData.fromJson(Map<String, dynamic> json) => _$MessageBubbleDataFromJson(json);
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

enum MeetStatus {
  @JsonValue('Sudah dipublish')
  sudahDipublish,
  @JsonValue('Belum dipublish')
  belumDipublish;

  String get text => switch (this) {
        sudahDipublish => 'Sudah Dipublish',
        belumDipublish => 'Belum Dipublish',
      };
}
