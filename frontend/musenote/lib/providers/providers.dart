import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/api_client.dart';
import '../services/lyrics_service.dart';
import '../services/chords_service.dart';
import '../services/melody_service.dart';

// API Client provider
final apiClientProvider = Provider<ApiClient>((ref) => ApiClient());

// Service providers
final lyricsServiceProvider = Provider<LyricsService>((ref) {
  final apiClient = ref.read(apiClientProvider);
  return LyricsService(apiClient);
});

final chordsServiceProvider = Provider<ChordsService>((ref) {
  final apiClient = ref.read(apiClientProvider);
  return ChordsService(apiClient);
});

final melodyServiceProvider = Provider<MelodyService>((ref) {
  final apiClient = ref.read(apiClientProvider);
  return MelodyService(apiClient);
});
