// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lyrics_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LyricsRequestImpl _$$LyricsRequestImplFromJson(Map<String, dynamic> json) =>
    _$LyricsRequestImpl(
      theme: json['theme'] as String,
      genre: json['genre'] as String,
      mood: json['mood'] as String?,
      additionalNotes: json['additionalNotes'] as String?,
    );

Map<String, dynamic> _$$LyricsRequestImplToJson(_$LyricsRequestImpl instance) =>
    <String, dynamic>{
      'theme': instance.theme,
      'genre': instance.genre,
      'mood': instance.mood,
      'additionalNotes': instance.additionalNotes,
    };

_$LyricsResponseImpl _$$LyricsResponseImplFromJson(Map<String, dynamic> json) =>
    _$LyricsResponseImpl(
      lyrics: json['lyrics'] as String,
      title: json['title'] as String,
      structure: json['structure'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$LyricsResponseImplToJson(
  _$LyricsResponseImpl instance,
) => <String, dynamic>{
  'lyrics': instance.lyrics,
  'title': instance.title,
  'structure': instance.structure,
  'tags': instance.tags,
};
