// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chords_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChordsRequestImpl _$$ChordsRequestImplFromJson(Map<String, dynamic> json) =>
    _$ChordsRequestImpl(
      key: json['key'] as String,
      genre: json['genre'] as String,
      progression: json['progression'] as String?,
      mood: json['mood'] as String?,
    );

Map<String, dynamic> _$$ChordsRequestImplToJson(_$ChordsRequestImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'genre': instance.genre,
      'progression': instance.progression,
      'mood': instance.mood,
    };

_$ChordsResponseImpl _$$ChordsResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChordsResponseImpl(
      chords: (json['chords'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      progression: json['progression'] as String,
      pdfUrl: json['pdfUrl'] as String?,
      key: json['key'] as String?,
    );

Map<String, dynamic> _$$ChordsResponseImplToJson(
  _$ChordsResponseImpl instance,
) => <String, dynamic>{
  'chords': instance.chords,
  'progression': instance.progression,
  'pdfUrl': instance.pdfUrl,
  'key': instance.key,
};
