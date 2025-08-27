# MuseNote Flutter App

A Flutter application for AI-powered music creation with three main features:
- **Ideas**: Store and manage your creative ideas
- **IA Lab**: AI-powered music creation wizards
- **Settings**: App configuration and preferences

## Features

### AI Lab Wizards

1. **Lyrics Wizard** - Generate song lyrics with AI
   - Input: Theme, genre, mood, additional notes
   - Output: Complete lyrics with title and structure
   - 3-step process: Input → Result → Confirm

2. **Chords Wizard** - Create chord progressions
   - Input: Key, genre, mood, custom progression
   - Output: Chord progression and available chords
   - 3-step process: Input → Result → Confirm

3. **Melody Wizard** - Generate melodies and audio
   - Input: Genre, tempo, key, mood, duration
   - Output: Audio file with playback controls
   - 3-step process: Input → Result → Confirm

## Architecture

- **State Management**: Riverpod
- **Audio Playback**: just_audio
- **File Operations**: file_picker
- **HTTP Client**: dio
- **Models**: Freezed for immutable data classes

## Project Structure

```
lib/
├── app.dart                    # Main app configuration
├── main.dart                   # App entry point
├── features/                   # Feature-based organization
│   ├── ideas/                  # Ideas management
│   ├── ialab/                  # AI Lab main screen
│   ├── lyrics/                 # Lyrics wizard
│   ├── chords/                 # Chords wizard
│   ├── melody/                 # Melody wizard
│   └── settings/               # App settings
├── models/                     # Data models
├── services/                   # API services
├── providers/                  # Riverpod providers
└── widgets/                    # Shared widgets
```

## Getting Started

1. Install dependencies:
   ```bash
   flutter pub get
   ```

2. Generate code:
   ```bash
   dart run build_runner build
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## API Integration

The app includes mock services that simulate API calls to:
- `/lyrics/suggest` - Generate lyrics
- `/chords/suggest` - Generate chord progressions  
- `/melody/generate` - Generate melodies

When the backend is available, the services will automatically switch from mock responses to real API calls.

## Dependencies

- `flutter_riverpod`: State management
- `just_audio`: Audio playback
- `file_picker`: File operations
- `dio`: HTTP client
- `freezed`: Immutable data classes
- `json_annotation`: JSON serialization