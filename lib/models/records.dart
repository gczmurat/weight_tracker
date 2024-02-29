import 'package:freezed_annotation/freezed_annotation.dart';
part 'records.freezed.dart';
part 'records.g.dart';

@freezed
class Records with _$Records {
  const factory Records({
    required double weight,
    required DateTime dateTime,
    String? note,
    String? photoUrl,
  }) = _Records;

  factory Records.fromJson(Map<String, Object> json) => _$RecordsFromJson(json);
}
