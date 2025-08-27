// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'melody_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MelodyRequest _$MelodyRequestFromJson(Map<String, dynamic> json) {
  return _MelodyRequest.fromJson(json);
}

/// @nodoc
mixin _$MelodyRequest {
  String get genre => throw _privateConstructorUsedError;
  String get tempo => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get mood => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;

  /// Serializes this MelodyRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MelodyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MelodyRequestCopyWith<MelodyRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MelodyRequestCopyWith<$Res> {
  factory $MelodyRequestCopyWith(
    MelodyRequest value,
    $Res Function(MelodyRequest) then,
  ) = _$MelodyRequestCopyWithImpl<$Res, MelodyRequest>;
  @useResult
  $Res call({
    String genre,
    String tempo,
    String? key,
    String? mood,
    int? duration,
  });
}

/// @nodoc
class _$MelodyRequestCopyWithImpl<$Res, $Val extends MelodyRequest>
    implements $MelodyRequestCopyWith<$Res> {
  _$MelodyRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MelodyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? tempo = null,
    Object? key = freezed,
    Object? mood = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      _value.copyWith(
            genre: null == genre
                ? _value.genre
                : genre // ignore: cast_nullable_to_non_nullable
                      as String,
            tempo: null == tempo
                ? _value.tempo
                : tempo // ignore: cast_nullable_to_non_nullable
                      as String,
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
            mood: freezed == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String?,
            duration: freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MelodyRequestImplCopyWith<$Res>
    implements $MelodyRequestCopyWith<$Res> {
  factory _$$MelodyRequestImplCopyWith(
    _$MelodyRequestImpl value,
    $Res Function(_$MelodyRequestImpl) then,
  ) = __$$MelodyRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String genre,
    String tempo,
    String? key,
    String? mood,
    int? duration,
  });
}

/// @nodoc
class __$$MelodyRequestImplCopyWithImpl<$Res>
    extends _$MelodyRequestCopyWithImpl<$Res, _$MelodyRequestImpl>
    implements _$$MelodyRequestImplCopyWith<$Res> {
  __$$MelodyRequestImplCopyWithImpl(
    _$MelodyRequestImpl _value,
    $Res Function(_$MelodyRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MelodyRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genre = null,
    Object? tempo = null,
    Object? key = freezed,
    Object? mood = freezed,
    Object? duration = freezed,
  }) {
    return _then(
      _$MelodyRequestImpl(
        genre: null == genre
            ? _value.genre
            : genre // ignore: cast_nullable_to_non_nullable
                  as String,
        tempo: null == tempo
            ? _value.tempo
            : tempo // ignore: cast_nullable_to_non_nullable
                  as String,
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        mood: freezed == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String?,
        duration: freezed == duration
            ? _value.duration
            : duration // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MelodyRequestImpl implements _MelodyRequest {
  const _$MelodyRequestImpl({
    required this.genre,
    required this.tempo,
    this.key,
    this.mood,
    this.duration,
  });

  factory _$MelodyRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MelodyRequestImplFromJson(json);

  @override
  final String genre;
  @override
  final String tempo;
  @override
  final String? key;
  @override
  final String? mood;
  @override
  final int? duration;

  @override
  String toString() {
    return 'MelodyRequest(genre: $genre, tempo: $tempo, key: $key, mood: $mood, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MelodyRequestImpl &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.tempo, tempo) || other.tempo == tempo) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, genre, tempo, key, mood, duration);

  /// Create a copy of MelodyRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MelodyRequestImplCopyWith<_$MelodyRequestImpl> get copyWith =>
      __$$MelodyRequestImplCopyWithImpl<_$MelodyRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MelodyRequestImplToJson(this);
  }
}

abstract class _MelodyRequest implements MelodyRequest {
  const factory _MelodyRequest({
    required final String genre,
    required final String tempo,
    final String? key,
    final String? mood,
    final int? duration,
  }) = _$MelodyRequestImpl;

  factory _MelodyRequest.fromJson(Map<String, dynamic> json) =
      _$MelodyRequestImpl.fromJson;

  @override
  String get genre;
  @override
  String get tempo;
  @override
  String? get key;
  @override
  String? get mood;
  @override
  int? get duration;

  /// Create a copy of MelodyRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MelodyRequestImplCopyWith<_$MelodyRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MelodyResponse _$MelodyResponseFromJson(Map<String, dynamic> json) {
  return _MelodyResponse.fromJson(json);
}

/// @nodoc
mixin _$MelodyResponse {
  String get audioUrl => throw _privateConstructorUsedError;
  String? get midiUrl => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  String? get tempo => throw _privateConstructorUsedError;

  /// Serializes this MelodyResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MelodyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MelodyResponseCopyWith<MelodyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MelodyResponseCopyWith<$Res> {
  factory $MelodyResponseCopyWith(
    MelodyResponse value,
    $Res Function(MelodyResponse) then,
  ) = _$MelodyResponseCopyWithImpl<$Res, MelodyResponse>;
  @useResult
  $Res call({String audioUrl, String? midiUrl, String? key, String? tempo});
}

/// @nodoc
class _$MelodyResponseCopyWithImpl<$Res, $Val extends MelodyResponse>
    implements $MelodyResponseCopyWith<$Res> {
  _$MelodyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MelodyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioUrl = null,
    Object? midiUrl = freezed,
    Object? key = freezed,
    Object? tempo = freezed,
  }) {
    return _then(
      _value.copyWith(
            audioUrl: null == audioUrl
                ? _value.audioUrl
                : audioUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            midiUrl: freezed == midiUrl
                ? _value.midiUrl
                : midiUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
            tempo: freezed == tempo
                ? _value.tempo
                : tempo // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MelodyResponseImplCopyWith<$Res>
    implements $MelodyResponseCopyWith<$Res> {
  factory _$$MelodyResponseImplCopyWith(
    _$MelodyResponseImpl value,
    $Res Function(_$MelodyResponseImpl) then,
  ) = __$$MelodyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String audioUrl, String? midiUrl, String? key, String? tempo});
}

/// @nodoc
class __$$MelodyResponseImplCopyWithImpl<$Res>
    extends _$MelodyResponseCopyWithImpl<$Res, _$MelodyResponseImpl>
    implements _$$MelodyResponseImplCopyWith<$Res> {
  __$$MelodyResponseImplCopyWithImpl(
    _$MelodyResponseImpl _value,
    $Res Function(_$MelodyResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MelodyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioUrl = null,
    Object? midiUrl = freezed,
    Object? key = freezed,
    Object? tempo = freezed,
  }) {
    return _then(
      _$MelodyResponseImpl(
        audioUrl: null == audioUrl
            ? _value.audioUrl
            : audioUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        midiUrl: freezed == midiUrl
            ? _value.midiUrl
            : midiUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        tempo: freezed == tempo
            ? _value.tempo
            : tempo // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MelodyResponseImpl implements _MelodyResponse {
  const _$MelodyResponseImpl({
    required this.audioUrl,
    this.midiUrl,
    this.key,
    this.tempo,
  });

  factory _$MelodyResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MelodyResponseImplFromJson(json);

  @override
  final String audioUrl;
  @override
  final String? midiUrl;
  @override
  final String? key;
  @override
  final String? tempo;

  @override
  String toString() {
    return 'MelodyResponse(audioUrl: $audioUrl, midiUrl: $midiUrl, key: $key, tempo: $tempo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MelodyResponseImpl &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.midiUrl, midiUrl) || other.midiUrl == midiUrl) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.tempo, tempo) || other.tempo == tempo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, audioUrl, midiUrl, key, tempo);

  /// Create a copy of MelodyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MelodyResponseImplCopyWith<_$MelodyResponseImpl> get copyWith =>
      __$$MelodyResponseImplCopyWithImpl<_$MelodyResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MelodyResponseImplToJson(this);
  }
}

abstract class _MelodyResponse implements MelodyResponse {
  const factory _MelodyResponse({
    required final String audioUrl,
    final String? midiUrl,
    final String? key,
    final String? tempo,
  }) = _$MelodyResponseImpl;

  factory _MelodyResponse.fromJson(Map<String, dynamic> json) =
      _$MelodyResponseImpl.fromJson;

  @override
  String get audioUrl;
  @override
  String? get midiUrl;
  @override
  String? get key;
  @override
  String? get tempo;

  /// Create a copy of MelodyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MelodyResponseImplCopyWith<_$MelodyResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
