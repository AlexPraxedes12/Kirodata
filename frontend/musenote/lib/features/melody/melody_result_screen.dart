import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'melody_wizard.dart';

class MelodyResultScreen extends ConsumerStatefulWidget {
  const MelodyResultScreen({super.key});

  @override
  ConsumerState<MelodyResultScreen> createState() => _MelodyResultScreenState();
}

class _MelodyResultScreenState extends ConsumerState<MelodyResultScreen> {
  late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  Duration _duration = Duration.zero;
  Duration _position = Duration.zero;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();

    _audioPlayer.durationStream.listen((duration) {
      setState(() {
        _duration = duration ?? Duration.zero;
      });
    });

    _audioPlayer.positionStream.listen((position) {
      setState(() {
        _position = position;
      });
    });

    _audioPlayer.playerStateStream.listen((state) {
      setState(() {
        _isPlaying = state.playing;
      });
    });
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playPause() async {
    final state = ref.read(melodyWizardProvider);
    final response = state.response;

    if (response == null) return;

    try {
      if (_isPlaying) {
        await _audioPlayer.pause();
      } else {
        if (_audioPlayer.audioSource == null) {
          await _audioPlayer.setUrl(response.audioUrl);
        }
        await _audioPlayer.play();
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error playing audio: $e')));
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(melodyWizardProvider);
    final response = state.response;

    if (response == null) {
      return const Center(child: Text('No melody generated yet'));
    }

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Your Generated Melody',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (response.key != null)
                Text(
                  'Key: ${response.key}',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
              if (response.key != null && response.tempo != null)
                const Text(' • ', style: TextStyle(color: Colors.grey)),
              if (response.tempo != null)
                Text(
                  'Tempo: ${response.tempo} BPM',
                  style: const TextStyle(fontSize: 16, color: Colors.grey),
                ),
            ],
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.music_note,
                      size: 80,
                      color: Colors.deepPurple,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Audio Player',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () async {
                            await _audioPlayer.seek(Duration.zero);
                          },
                          icon: const Icon(Icons.replay),
                          iconSize: 32,
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          onPressed: _playPause,
                          icon: Icon(
                            _isPlaying ? Icons.pause_circle : Icons.play_circle,
                          ),
                          iconSize: 64,
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 16),
                        IconButton(
                          onPressed: () async {
                            await _audioPlayer.stop();
                          },
                          icon: const Icon(Icons.stop),
                          iconSize: 32,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    if (_duration > Duration.zero)
                      Column(
                        children: [
                          Slider(
                            value: _position.inSeconds.toDouble(),
                            max: _duration.inSeconds.toDouble(),
                            onChanged: (value) async {
                              await _audioPlayer.seek(
                                Duration(seconds: value.toInt()),
                              );
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(_formatDuration(_position)),
                              Text(_formatDuration(_duration)),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ),
          ),
          if (response.midiUrl != null)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: OutlinedButton.icon(
                onPressed: () {
                  // TODO: Download MIDI
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('MIDI download coming soon!')),
                  );
                },
                icon: const Icon(Icons.file_download),
                label: const Text('Download MIDI'),
              ),
            ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    _audioPlayer.stop();
                    ref.read(melodyWizardProvider.notifier).previousStep();
                  },
                  child: const Text('Back'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(melodyWizardProvider.notifier).nextStep();
                  },
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
