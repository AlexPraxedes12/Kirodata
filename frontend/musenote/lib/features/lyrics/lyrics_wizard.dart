import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musenote/services/lyrics_service.dart';
import '../../models/lyrics_models.dart';
import '../../providers/providers.dart';
import 'lyrics_input_screen.dart';
import 'lyrics_result_screen.dart';
import 'lyrics_confirm_screen.dart';

final lyricsWizardProvider =
    StateNotifierProvider<LyricsWizardNotifier, LyricsWizardState>((ref) {
      return LyricsWizardNotifier(ref.read(lyricsServiceProvider));
    });

class LyricsWizardState {
  final int currentStep;
  final LyricsRequest? request;
  final LyricsResponse? response;
  final bool isLoading;
  final String? error;

  const LyricsWizardState({
    this.currentStep = 0,
    this.request,
    this.response,
    this.isLoading = false,
    this.error,
  });

  LyricsWizardState copyWith({
    int? currentStep,
    LyricsRequest? request,
    LyricsResponse? response,
    bool? isLoading,
    String? error,
  }) {
    return LyricsWizardState(
      currentStep: currentStep ?? this.currentStep,
      request: request ?? this.request,
      response: response ?? this.response,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class LyricsWizardNotifier extends StateNotifier<LyricsWizardState> {
  final LyricsService lyricsService;

  LyricsWizardNotifier(this.lyricsService) : super(const LyricsWizardState());

  void nextStep() {
    if (state.currentStep < 2) {
      state = state.copyWith(currentStep: state.currentStep + 1);
    }
  }

  void previousStep() {
    if (state.currentStep > 0) {
      state = state.copyWith(currentStep: state.currentStep - 1);
    }
  }

  void setRequest(LyricsRequest request) {
    state = state.copyWith(request: request);
  }

  Future<void> generateLyrics() async {
    if (state.request == null) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await lyricsService.suggestLyrics(state.request!);
      state = state.copyWith(
        response: response,
        isLoading: false,
        currentStep: 1,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void reset() {
    state = const LyricsWizardState();
  }
}

class LyricsWizard extends ConsumerWidget {
  const LyricsWizard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(lyricsWizardProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lyrics Wizard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(
        index: state.currentStep,
        children: const [
          LyricsInputScreen(),
          LyricsResultScreen(),
          LyricsConfirmScreen(),
        ],
      ),
    );
  }
}
