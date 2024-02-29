// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'records.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecordsImpl _$$RecordsImplFromJson(Map<String, dynamic> json) =>
    _$RecordsImpl(
      weight: (json['weight'] as num).toDouble(),
      dateTime: DateTime.parse(json['dateTime'] as String),
      note: json['note'] as String?,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$RecordsImplToJson(_$RecordsImpl instance) =>
    <String, dynamic>{
      'weight': instance.weight,
      'dateTime': instance.dateTime.toIso8601String(),
      'note': instance.note,
      'photoUrl': instance.photoUrl,
    };
