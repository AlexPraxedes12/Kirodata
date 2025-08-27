import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musenote/services/chords_service.dart';
import '../../models/chords_models.dart';
import '../../providers/providers.dart';
import 'chords_input_screen.dart';
import 'chords_result_screen.dart';
import 'chords_confirm_screen.dart';

final chordsWizardProvider =
    StateNotifierProvider<ChordsWizardNotifier, ChordsWizardState>((ref) {
      return ChordsWizardNotifier(ref.read(chordsServiceProvider));
    });

class ChordsWizardState {
  final int currentStep;
  final ChordsRequest? request;
  final ChordsResponse? response;
  final bool isLoading;
  final String? error;

  const ChordsWizardState({
    this.currentStep = 0,
    this.request,
    this.response,
    this.isLoading = false,
    this.error,
  });

  ChordsWizardState copyWith({
    int? currentStep,
    ChordsRequest? request,
    ChordsResponse? response,
    bool? isLoading,
    String? error,
  }) {
    return ChordsWizardState(
      currentStep: currentStep ?? this.currentStep,
      request: request ?? this.request,
      response: response ?? this.response,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class ChordsWizardNotifier extends StateNotifier<ChordsWizardState> {
  final ChordsService chordsService;

  ChordsWizardNotifier(this.chordsService) : super(const ChordsWizardState());

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

  void setRequest(ChordsRequest request) {
    state = state.copyWith(request: request);
  }

  Future<void> generateChords() async {
    if (state.request == null) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await chordsService.suggestChords(state.request!);
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
    state = const ChordsWizardState();
  }
}

class ChordsWizard extends ConsumerWidget {
  const ChordsWizard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(chordsWizardProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chords Wizard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(
        index: state.currentStep,
        children: const [
          ChordsInputScreen(),
          ChordsResultScreen(),
          ChordsConfirmScreen(),
        ],
      ),
    );
  }
}
