import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'record.freezed.dart';
part 'record.g.dart';

@freezed
class Record with _$Record {
  const factory Record({
    required double weight, // Tip belirtimi eklendi
    required DateTime dateTime, // Tip belirtimi eklendi
    required String note, // Tip belirtimi eklendi
    String? photoUrl, // Nullable olduğu için doğru
  }) = _Record;

  factory Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json); // Object? yerine dynamic kullanıldı
}
