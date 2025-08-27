import 'package:dio/dio.dart';
import '../models/lyrics_models.dart';
import 'api_client.dart';

class LyricsService {
  final ApiClient _apiClient;

  LyricsService(this._apiClient);

  Future<LyricsResponse> suggestLyrics(LyricsRequest request) async {
    try {
      final response = await _apiClient.dio.post(
        '/lyrics/suggest',
        data: request.toJson(),
      );

      return LyricsResponse.fromJson(response.data);
    } on DioException {
      // Mock response for demo
      await Future.delayed(const Duration(seconds: 2));
      return LyricsResponse(
        lyrics: _getMockLyrics(request.theme, request.genre),
        title: _getMockTitle(request.theme),
        structure: 'Verse - Chorus - Verse - Chorus - Bridge - Chorus',
        tags: [request.genre, request.mood ?? 'neutral'],
      );
    }
  }

  String _getMockLyrics(String theme, String genre) {
    return '''
[Verse 1]
Walking down the path of $theme
In the style of $genre we dream
Every step a melody
Every breath a harmony

[Chorus]
This is where the music lives
In the heart that always gives
$theme in every note we play
$genre lights up the way

[Verse 2]
Rhythm flows like morning rain
Washing away all the pain
In this world of sound and light
Everything will be alright

[Chorus]
This is where the music lives
In the heart that always gives
$theme in every note we play
$genre lights up the way
''';
  }

  String _getMockTitle(String theme) {
    return '${theme.split(' ').map((word) => word[0].toUpperCase() + word.substring(1)).join(' ')} Song';
  }
}
