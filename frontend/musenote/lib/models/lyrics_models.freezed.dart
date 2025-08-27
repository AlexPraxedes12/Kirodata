// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lyrics_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LyricsRequest _$LyricsRequestFromJson(Map<String, dynamic> json) {
  return _LyricsRequest.fromJson(json);
}

/// @nodoc
mixin _$LyricsRequest {
  String get theme => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String? get mood => throw _privateConstructorUsedError;
  String? get additionalNotes => throw _privateConstructorUsedError;

  /// Serializes this LyricsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LyricsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LyricsRequestCopyWith<LyricsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsRequestCopyWith<$Res> {
  factory $LyricsRequestCopyWith(
    LyricsRequest value,
    $Res Function(LyricsRequest) then,
  ) = _$LyricsRequestCopyWithImpl<$Res, LyricsRequest>;
  @useResult
  $Res call({
    String theme,
    String genre,
    String? mood,
    String? additionalNotes,
  });
}

/// @nodoc
class _$LyricsRequestCopyWithImpl<$Res, $Val extends LyricsRequest>
    implements $LyricsRequestCopyWith<$Res> {
  _$LyricsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LyricsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? genre = null,
    Object? mood = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(
      _value.copyWith(
            theme: null == theme
                ? _value.theme
                : theme // ignore: cast_nullable_to_non_nullable
                      as String,
            genre: null == genre
                ? _value.genre
                : genre // ignore: cast_nullable_to_non_nullable
                      as String,
            mood: freezed == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String?,
            additionalNotes: freezed == additionalNotes
                ? _value.additionalNotes
                : additionalNotes // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LyricsRequestImplCopyWith<$Res>
    implements $LyricsRequestCopyWith<$Res> {
  factory _$$LyricsRequestImplCopyWith(
    _$LyricsRequestImpl value,
    $Res Function(_$LyricsRequestImpl) then,
  ) = __$$LyricsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String theme,
    String genre,
    String? mood,
    String? additionalNotes,
  });
}

/// @nodoc
class __$$LyricsRequestImplCopyWithImpl<$Res>
    extends _$LyricsRequestCopyWithImpl<$Res, _$LyricsRequestImpl>
    implements _$$LyricsRequestImplCopyWith<$Res> {
  __$$LyricsRequestImplCopyWithImpl(
    _$LyricsRequestImpl _value,
    $Res Function(_$LyricsRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LyricsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? genre = null,
    Object? mood = freezed,
    Object? additionalNotes = freezed,
  }) {
    return _then(
      _$LyricsRequestImpl(
        theme: null == theme
            ? _value.theme
            : theme // ignore: cast_nullable_to_non_nullable
                  as String,
        genre: null == genre
            ? _value.genre
            : genre // ignore: cast_nullable_to_non_nullable
                  as String,
        mood: freezed == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String?,
        additionalNotes: freezed == additionalNotes
            ? _value.additionalNotes
            : additionalNotes // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricsRequestImpl implements _LyricsRequest {
  const _$LyricsRequestImpl({
    required this.theme,
    required this.genre,
    this.mood,
    this.additionalNotes,
  });

  factory _$LyricsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricsRequestImplFromJson(json);

  @override
  final String theme;
  @override
  final String genre;
  @override
  final String? mood;
  @override
  final String? additionalNotes;

  @override
  String toString() {
    return 'LyricsRequest(theme: $theme, genre: $genre, mood: $mood, additionalNotes: $additionalNotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricsRequestImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.mood, mood) || other.mood == mood) &&
            (identical(other.additionalNotes, additionalNotes) ||
                other.additionalNotes == additionalNotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, genre, mood, additionalNotes);

  /// Create a copy of LyricsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricsRequestImplCopyWith<_$LyricsRequestImpl> get copyWith =>
      __$$LyricsRequestImplCopyWithImpl<_$LyricsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricsRequestImplToJson(this);
  }
}

abstract class _LyricsRequest implements LyricsRequest {
  const factory _LyricsRequest({
    required final String theme,
    required final String genre,
    final String? mood,
    final String? additionalNotes,
  }) = _$LyricsRequestImpl;

  factory _LyricsRequest.fromJson(Map<String, dynamic> json) =
      _$LyricsRequestImpl.fromJson;

  @override
  String get theme;
  @override
  String get genre;
  @override
  String? get mood;
  @override
  String? get additionalNotes;

  /// Create a copy of LyricsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LyricsRequestImplCopyWith<_$LyricsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LyricsResponse _$LyricsResponseFromJson(Map<String, dynamic> json) {
  return _LyricsResponse.fromJson(json);
}

/// @nodoc
mixin _$LyricsResponse {
  String get lyrics => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get structure => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  /// Serializes this LyricsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LyricsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LyricsResponseCopyWith<LyricsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LyricsResponseCopyWith<$Res> {
  factory $LyricsResponseCopyWith(
    LyricsResponse value,
    $Res Function(LyricsResponse) then,
  ) = _$LyricsResponseCopyWithImpl<$Res, LyricsResponse>;
  @useResult
  $Res call({
    String lyrics,
    String title,
    String? structure,
    List<String>? tags,
  });
}

/// @nodoc
class _$LyricsResponseCopyWithImpl<$Res, $Val extends LyricsResponse>
    implements $LyricsResponseCopyWith<$Res> {
  _$LyricsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LyricsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lyrics = null,
    Object? title = null,
    Object? structure = freezed,
    Object? tags = freezed,
  }) {
    return _then(
      _value.copyWith(
            lyrics: null == lyrics
                ? _value.lyrics
                : lyrics // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            structure: freezed == structure
                ? _value.structure
                : structure // ignore: cast_nullable_to_non_nullable
                      as String?,
            tags: freezed == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LyricsResponseImplCopyWith<$Res>
    implements $LyricsResponseCopyWith<$Res> {
  factory _$$LyricsResponseImplCopyWith(
    _$LyricsResponseImpl value,
    $Res Function(_$LyricsResponseImpl) then,
  ) = __$$LyricsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String lyrics,
    String title,
    String? structure,
    List<String>? tags,
  });
}

/// @nodoc
class __$$LyricsResponseImplCopyWithImpl<$Res>
    extends _$LyricsResponseCopyWithImpl<$Res, _$LyricsResponseImpl>
    implements _$$LyricsResponseImplCopyWith<$Res> {
  __$$LyricsResponseImplCopyWithImpl(
    _$LyricsResponseImpl _value,
    $Res Function(_$LyricsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LyricsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lyrics = null,
    Object? title = null,
    Object? structure = freezed,
    Object? tags = freezed,
  }) {
    return _then(
      _$LyricsResponseImpl(
        lyrics: null == lyrics
            ? _value.lyrics
            : lyrics // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        structure: freezed == structure
            ? _value.structure
            : structure // ignore: cast_nullable_to_non_nullable
                  as String?,
        tags: freezed == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LyricsResponseImpl implements _LyricsResponse {
  const _$LyricsResponseImpl({
    required this.lyrics,
    required this.title,
    this.structure,
    final List<String>? tags,
  }) : _tags = tags;

  factory _$LyricsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LyricsResponseImplFromJson(json);

  @override
  final String lyrics;
  @override
  final String title;
  @override
  final String? structure;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LyricsResponse(lyrics: $lyrics, title: $title, structure: $structure, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LyricsResponseImpl &&
            (identical(other.lyrics, lyrics) || other.lyrics == lyrics) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.structure, structure) ||
                other.structure == structure) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    lyrics,
    title,
    structure,
    const DeepCollectionEquality().hash(_tags),
  );

  /// Create a copy of LyricsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LyricsResponseImplCopyWith<_$LyricsResponseImpl> get copyWith =>
      __$$LyricsResponseImplCopyWithImpl<_$LyricsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LyricsResponseImplToJson(this);
  }
}

abstract class _LyricsResponse implements LyricsResponse {
  const factory _LyricsResponse({
    required final String lyrics,
    required final String title,
    final String? structure,
    final List<String>? tags,
  }) = _$LyricsResponseImpl;

  factory _LyricsResponse.fromJson(Map<String, dynamic> json) =
      _$LyricsResponseImpl.fromJson;

  @override
  String get lyrics;
  @override
  String get title;
  @override
  String? get structure;
  @override
  List<String>? get tags;

  /// Create a copy of LyricsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LyricsResponseImplCopyWith<_$LyricsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
