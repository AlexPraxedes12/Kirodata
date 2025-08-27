import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:musenote/services/melody_service.dart';
import '../../models/melody_models.dart';
import '../../providers/providers.dart';
import 'melody_input_screen.dart';
import 'melody_result_screen.dart';
import 'melody_confirm_screen.dart';

final melodyWizardProvider =
    StateNotifierProvider<MelodyWizardNotifier, MelodyWizardState>((ref) {
      return MelodyWizardNotifier(ref.read(melodyServiceProvider));
    });

class MelodyWizardState {
  final int currentStep;
  final MelodyRequest? request;
  final MelodyResponse? response;
  final bool isLoading;
  final String? error;

  const MelodyWizardState({
    this.currentStep = 0,
    this.request,
    this.response,
    this.isLoading = false,
    this.error,
  });

  MelodyWizardState copyWith({
    int? currentStep,
    MelodyRequest? request,
    MelodyResponse? response,
    bool? isLoading,
    String? error,
  }) {
    return MelodyWizardState(
      currentStep: currentStep ?? this.currentStep,
      request: request ?? this.request,
      response: response ?? this.response,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
    );
  }
}

class MelodyWizardNotifier extends StateNotifier<MelodyWizardState> {
  final MelodyService melodyService;

  MelodyWizardNotifier(this.melodyService) : super(const MelodyWizardState());

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

  void setRequest(MelodyRequest request) {
    state = state.copyWith(request: request);
  }

  Future<void> generateMelody() async {
    if (state.request == null) return;

    state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await melodyService.generateMelody(state.request!);
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
    state = const MelodyWizardState();
  }
}

class MelodyWizard extends ConsumerWidget {
  const MelodyWizard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(melodyWizardProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Melody Wizard'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: IndexedStack(
        index: state.currentStep,
        children: const [
          MelodyInputScreen(),
          MelodyResultScreen(),
          MelodyConfirmScreen(),
        ],
      ),
    );
  }
}
