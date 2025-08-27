import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/chords_models.dart';
import 'chords_wizard.dart';

class ChordsInputScreen extends ConsumerStatefulWidget {
  const ChordsInputScreen({super.key});

  @override
  ConsumerState<ChordsInputScreen> createState() => _ChordsInputScreenState();
}

class _ChordsInputScreenState extends ConsumerState<ChordsInputScreen> {
  final _formKey = GlobalKey<FormState>();
  final _progressionController = TextEditingController();

  String _selectedKey = 'C';
  String _selectedGenre = 'Pop';
  String _selectedMood = 'Happy';

  final List<String> _keys = [
    'C',
    'C#',
    'D',
    'D#',
    'E',
    'F',
    'F#',
    'G',
    'G#',
    'A',
    'A#',
    'B',
  ];
  final List<String> _genres = [
    'Pop',
    'Rock',
    'Jazz',
    'Blues',
    'Country',
    'Hip Hop',
    'Electronic',
  ];
  final List<String> _moods = [
    'Happy',
    'Sad',
    'Energetic',
    'Calm',
    'Romantic',
    'Melancholic',
  ];

  @override
  void dispose() {
    _progressionController.dispose();
    super.dispose();
  }

  void _generateChords() {
    if (_formKey.currentState!.validate()) {
      final request = ChordsRequest(
        key: _selectedKey,
        genre: _selectedGenre,
        mood: _selectedMood,
        progression: _progressionController.text.isEmpty
            ? null
            : _progressionController.text,
      );

      ref.read(chordsWizardProvider.notifier).setRequest(request);
      ref.read(chordsWizardProvider.notifier).generateChords();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(chordsWizardProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create Chord Progressions',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Set your musical parameters and we\'ll suggest chord progressions',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DropdownButtonFormField<String>(
                      value: _selectedKey,
                      decoration: const InputDecoration(
                        labelText: 'Key',
                        border: OutlineInputBorder(),
                      ),
                      items: _keys.map((key) {
                        return DropdownMenuItem(value: key, child: Text(key));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedKey = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedGenre,
                      decoration: const InputDecoration(
                        labelText: 'Genre',
                        border: OutlineInputBorder(),
                      ),
                      items: _genres.map((genre) {
                        return DropdownMenuItem(
                          value: genre,
                          child: Text(genre),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedGenre = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<String>(
                      value: _selectedMood,
                      decoration: const InputDecoration(
                        labelText: 'Mood',
                        border: OutlineInputBorder(),
                      ),
                      items: _moods.map((mood) {
                        return DropdownMenuItem(value: mood, child: Text(mood));
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedMood = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _progressionController,
                      decoration: const InputDecoration(
                        labelText: 'Custom Progression (Optional)',
                        hintText: 'e.g., I-V-vi-IV or C-G-Am-F',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Card(
                      color: Colors.blue.shade50,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tips:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '• Choose a key that matches your vocal range',
                            ),
                            Text(
                              '• Different genres have characteristic progressions',
                            ),
                            Text('• The mood will influence chord complexity'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: state.isLoading ? null : _generateChords,
              child: state.isLoading
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                        SizedBox(width: 8),
                        Text('Generating...'),
                      ],
                    )
                  : const Text('Generate Chords'),
            ),
            if (state.error != null)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  state.error!,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
