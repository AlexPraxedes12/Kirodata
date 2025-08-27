import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/lyrics_models.dart';
import 'lyrics_wizard.dart';

class LyricsInputScreen extends ConsumerStatefulWidget {
  const LyricsInputScreen({super.key});

  @override
  ConsumerState<LyricsInputScreen> createState() => _LyricsInputScreenState();
}

class _LyricsInputScreenState extends ConsumerState<LyricsInputScreen> {
  final _formKey = GlobalKey<FormState>();
  final _themeController = TextEditingController();
  final _notesController = TextEditingController();

  String _selectedGenre = 'Pop';
  String _selectedMood = 'Happy';

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
    _themeController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _generateLyrics() {
    if (_formKey.currentState!.validate()) {
      final request = LyricsRequest(
        theme: _themeController.text,
        genre: _selectedGenre,
        mood: _selectedMood,
        additionalNotes: _notesController.text.isEmpty
            ? null
            : _notesController.text,
      );

      ref.read(lyricsWizardProvider.notifier).setRequest(request);
      ref.read(lyricsWizardProvider.notifier).generateLyrics();
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(lyricsWizardProvider);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Create Your Lyrics',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            const Text(
              'Tell us about your song and we\'ll generate lyrics for you',
              style: TextStyle(fontSize: 16, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _themeController,
                      decoration: const InputDecoration(
                        labelText: 'Song Theme',
                        hintText: 'e.g., love, friendship, adventure',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a theme';
                        }
                        return null;
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
                      controller: _notesController,
                      decoration: const InputDecoration(
                        labelText: 'Additional Notes (Optional)',
                        hintText: 'Any specific requirements or ideas',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: state.isLoading ? null : _generateLyrics,
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
                  : const Text('Generate Lyrics'),
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
