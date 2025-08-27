import 'package:freezed_annotation/freezed_annotation.dart';

part 'melody_models.freezed.dart';
part 'melody_models.g.dart';

@freezed
class MelodyRequest with _$MelodyRequest {
  const factory MelodyRequest({
    required String genre,
    required String tempo,
    String? key,
    String? mood,
    int? duration,
  }) = _MelodyRequest;

  factory MelodyRequest.fromJson(Map<String, dynamic> json) =>
      _$MelodyRequestFromJson(json);
}

@freezed
class MelodyResponse with _$MelodyResponse {
  const factory MelodyResponse({
    required String audioUrl,
    String? midiUrl,
    String? key,
    String? tempo,
  }) = _MelodyResponse;

  factory MelodyResponse.fromJson(Map<String, dynamic> json) =>
      _$MelodyResponseFromJson(json);
}
