import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:file_picker/file_picker.dart';
import 'melody_wizard.dart';

class MelodyConfirmScreen extends ConsumerWidget {
  const MelodyConfirmScreen({super.key});

  Future<void> _exportAudio() async {
    try {
      String? outputFile = await FilePicker.platform.saveFile(
        dialogTitle: 'Save melody audio',
        fileName: 'melody.wav',
        type: FileType.audio,
      );

      if (outputFile != null) {
        // TODO: Implement actual file saving
        // For now, just show a success message
        return;
      }
    } catch (e) {
      // Handle error
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(melodyWizardProvider);
    final response = state.response;

    if (response == null) {
      return const Center(child: Text('No melody to confirm'));
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Icon(Icons.check_circle, size: 64, color: Colors.green),
          const SizedBox(height: 16),
          const Text(
            'Melody Generated Successfully!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Your melody in ${response.key} at ${response.tempo} BPM is ready',
            style: const TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'What would you like to do next?',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    ListTile(
                      leading: const Icon(Icons.save),
                      title: const Text('Save to Ideas'),
                      subtitle: const Text(
                        'Store this melody in your ideas collection',
                      ),
                      onTap: () {
                        // TODO: Implement save to ideas
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Saved to Ideas!')),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.file_download),
                      title: const Text('Export Audio'),
                      subtitle: const Text('Download the audio file'),
                      onTap: () async {
                        await _exportAudio();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Audio export coming soon!'),
                          ),
                        );
                      },
                    ),
                    if (response.midiUrl != null)
                      ListTile(
                        leading: const Icon(Icons.piano),
                        title: const Text('Export MIDI'),
                        subtitle: const Text(
                          'Download as MIDI file for editing',
                        ),
                        onTap: () {
                          // TODO: Implement MIDI export
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('MIDI export coming soon!'),
                            ),
                          );
                        },
                      ),
                    ListTile(
                      leading: const Icon(Icons.edit_note),
                      title: const Text('Add Lyrics'),
                      subtitle: const Text('Create lyrics for this melody'),
                      onTap: () {
                        // TODO: Navigate to lyrics wizard with melody context
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              'Lyrics wizard integration coming soon!',
                            ),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.share),
                      title: const Text('Share'),
                      subtitle: const Text('Share your melody with others'),
                      onTap: () {
                        // TODO: Implement share functionality
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Share functionality coming soon!'),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    ref.read(melodyWizardProvider.notifier).reset();
                  },
                  child: const Text('Create New'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Done'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
