// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'melody_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MelodyRequestImpl _$$MelodyRequestImplFromJson(Map<String, dynamic> json) =>
    _$MelodyRequestImpl(
      genre: json['genre'] as String,
      tempo: json['tempo'] as String,
      key: json['key'] as String?,
      mood: json['mood'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MelodyRequestImplToJson(_$MelodyRequestImpl instance) =>
    <String, dynamic>{
      'genre': instance.genre,
      'tempo': instance.tempo,
      'key': instance.key,
      'mood': instance.mood,
      'duration': instance.duration,
    };

_$MelodyResponseImpl _$$MelodyResponseImplFromJson(Map<String, dynamic> json) =>
    _$MelodyResponseImpl(
      audioUrl: json['audioUrl'] as String,
      midiUrl: json['midiUrl'] as String?,
      key: json['key'] as String?,
      tempo: json['tempo'] as String?,
    );

Map<String, dynamic> _$$MelodyResponseImplToJson(
  _$MelodyResponseImpl instance,
) => <String, dynamic>{
  'audioUrl': instance.audioUrl,
  'midiUrl': instance.midiUrl,
  'key': instance.key,
  'tempo': instance.tempo,
};
