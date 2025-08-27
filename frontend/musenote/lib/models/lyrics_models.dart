import 'package:freezed_annotation/freezed_annotation.dart';

part 'lyrics_models.freezed.dart';
part 'lyrics_models.g.dart';

@freezed
class LyricsRequest with _$LyricsRequest {
  const factory LyricsRequest({
    required String theme,
    required String genre,
    String? mood,
    String? additionalNotes,
  }) = _LyricsRequest;

  factory LyricsRequest.fromJson(Map<String, dynamic> json) =>
      _$LyricsRequestFromJson(json);
}

@freezed
class LyricsResponse with _$LyricsResponse {
  const factory LyricsResponse({
    required String lyrics,
    required String title,
    String? structure,
    List<String>? tags,
  }) = _LyricsResponse;

  factory LyricsResponse.fromJson(Map<String, dynamic> json) =>
      _$LyricsResponseFromJson(json);
}
