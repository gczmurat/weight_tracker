import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';
@freezed
class Record with _$Record {
  const factory Record({
    required double weight,
    required DateTime dateTime,
    String? note,
    String? photoUrl,
  }) = _Record;

  factory Record.fromJson(Map<String, Object?> json)
      => _$RecordFromJson(json);
}
