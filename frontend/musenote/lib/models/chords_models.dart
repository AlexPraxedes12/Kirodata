import 'package:freezed_annotation/freezed_annotation.dart';

part 'chords_models.freezed.dart';
part 'chords_models.g.dart';

@freezed
class ChordsRequest with _$ChordsRequest {
  const factory ChordsRequest({
    required String key,
    required String genre,
    String? progression,
    String? mood,
  }) = _ChordsRequest;

  factory ChordsRequest.fromJson(Map<String, dynamic> json) =>
      _$ChordsRequestFromJson(json);
}

@freezed
class ChordsResponse with _$ChordsResponse {
  const factory ChordsResponse({
    required List<String> chords,
    required String progression,
    String? pdfUrl,
    String? key,
  }) = _ChordsResponse;

  factory ChordsResponse.fromJson(Map<String, dynamic> json) =>
      _$ChordsResponseFromJson(json);
}
