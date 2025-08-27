import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/melody_models.dart';
import 'melody_wizard.dart';

class MelodyInputScreen extends ConsumerStatefulWidget {
  const MelodyInputScreen({super.key});

  @override
  ConsumerState<MelodyInputScreen> createState() => _MelodyInputScreenState();
}

class _MelodyInputScreenState extends ConsumerState<MelodyInputScreen> {
  final _formKey = GlobalKey<FormState>();

  String _selectedGenre = 'Pop';
  String _selectedTempo = '120';
  String _selectedKey = 'C';
  String _selectedMood = 'Happy';
  int _duration = 30;

  final List<String> _genres = [
    'Pop',
    'Rock',
    'Jazz',
    'Blues',
    'Country',
    'Hip Hop',
    'Electronic',
    'Classical',
  ];
  final List<String> _tempos = ['60', '80', '100', '120', '140', '160', '180'];
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
  final List<String> _moods = [
    'Happy',
    'Sad',
    'Energetic',
    'Calm',
    'Romantic',
    'Melancholic',
    'Mysterious',
  ];

  void _generateMelody() {
    if (_formKey.currentState!.validate()) {
      final request = MelodyRequest(
        genre: _selectedGenre,
        tempo: _selectedTempo,
        key: _selectedKey,
        mood: _selectedMood,
        duration: _duration,
      );

      ref.read(melodyWizardProvider.notifier).setRequest(request);
      ref.read(melodyWizardProvider.notifier).generateMelody();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(melodyWizardProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Generate Melody',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Configure your melody parameters and let AI create music for you',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                    Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: _selectedTempo,
                            decoration: const InputDecoration(
                              labelText: 'Tempo (BPM)',
                              border: OutlineInputBorder(),
                            ),
                            items: _tempos.map((tempo) {
                              return DropdownMenuItem(
                                value: tempo,
                                child: Text(tempo),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedTempo = value!;
                              });
                            },
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            value: _selectedKey,
                            decoration: const InputDecoration(
                              labelText: 'Key',
                              border: OutlineInputBorder(),
                            ),
                            items: _keys.map((key) {
                              return DropdownMenuItem(
                                value: key,
                                child: Text(key),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedKey = value!;
                              });
                            },
                          ),
                        ),
                      ],
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
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Duration: ${_duration}s',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Slider(
                              value: _duration.toDouble(),
                              min: 15,
                              max: 120,
                              divisions: 21,
                              label: '${_duration}s',
                              onChanged: (value) {
                                setState(() {
                                  _duration = value.round();
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Card(
                      color: Colors.orange.shade50,
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AI Generation Tips:',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text('• Slower tempos work better for ballads'),
                            Text('• Electronic genres support complex rhythms'),
                            Text(
                              '• Longer durations allow for more development',
                            ),
                            Text(
                              '• The mood affects melodic intervals and rhythm',
                            ),
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
              onPressed: state.isLoading ? null : _generateMelody,
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
                  : const Text('Generate Melody'),
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
