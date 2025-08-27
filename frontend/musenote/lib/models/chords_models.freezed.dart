// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chords_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChordsRequest _$ChordsRequestFromJson(Map<String, dynamic> json) {
  return _ChordsRequest.fromJson(json);
}

/// @nodoc
mixin _$ChordsRequest {
  String get key => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;
  String? get progression => throw _privateConstructorUsedError;
  String? get mood => throw _privateConstructorUsedError;

  /// Serializes this ChordsRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChordsRequestCopyWith<ChordsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChordsRequestCopyWith<$Res> {
  factory $ChordsRequestCopyWith(
    ChordsRequest value,
    $Res Function(ChordsRequest) then,
  ) = _$ChordsRequestCopyWithImpl<$Res, ChordsRequest>;
  @useResult
  $Res call({String key, String genre, String? progression, String? mood});
}

/// @nodoc
class _$ChordsRequestCopyWithImpl<$Res, $Val extends ChordsRequest>
    implements $ChordsRequestCopyWith<$Res> {
  _$ChordsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? genre = null,
    Object? progression = freezed,
    Object? mood = freezed,
  }) {
    return _then(
      _value.copyWith(
            key: null == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String,
            genre: null == genre
                ? _value.genre
                : genre // ignore: cast_nullable_to_non_nullable
                      as String,
            progression: freezed == progression
                ? _value.progression
                : progression // ignore: cast_nullable_to_non_nullable
                      as String?,
            mood: freezed == mood
                ? _value.mood
                : mood // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChordsRequestImplCopyWith<$Res>
    implements $ChordsRequestCopyWith<$Res> {
  factory _$$ChordsRequestImplCopyWith(
    _$ChordsRequestImpl value,
    $Res Function(_$ChordsRequestImpl) then,
  ) = __$$ChordsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String genre, String? progression, String? mood});
}

/// @nodoc
class __$$ChordsRequestImplCopyWithImpl<$Res>
    extends _$ChordsRequestCopyWithImpl<$Res, _$ChordsRequestImpl>
    implements _$$ChordsRequestImplCopyWith<$Res> {
  __$$ChordsRequestImplCopyWithImpl(
    _$ChordsRequestImpl _value,
    $Res Function(_$ChordsRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? genre = null,
    Object? progression = freezed,
    Object? mood = freezed,
  }) {
    return _then(
      _$ChordsRequestImpl(
        key: null == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String,
        genre: null == genre
            ? _value.genre
            : genre // ignore: cast_nullable_to_non_nullable
                  as String,
        progression: freezed == progression
            ? _value.progression
            : progression // ignore: cast_nullable_to_non_nullable
                  as String?,
        mood: freezed == mood
            ? _value.mood
            : mood // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChordsRequestImpl implements _ChordsRequest {
  const _$ChordsRequestImpl({
    required this.key,
    required this.genre,
    this.progression,
    this.mood,
  });

  factory _$ChordsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChordsRequestImplFromJson(json);

  @override
  final String key;
  @override
  final String genre;
  @override
  final String? progression;
  @override
  final String? mood;

  @override
  String toString() {
    return 'ChordsRequest(key: $key, genre: $genre, progression: $progression, mood: $mood)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChordsRequestImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            (identical(other.progression, progression) ||
                other.progression == progression) &&
            (identical(other.mood, mood) || other.mood == mood));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, genre, progression, mood);

  /// Create a copy of ChordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChordsRequestImplCopyWith<_$ChordsRequestImpl> get copyWith =>
      __$$ChordsRequestImplCopyWithImpl<_$ChordsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChordsRequestImplToJson(this);
  }
}

abstract class _ChordsRequest implements ChordsRequest {
  const factory _ChordsRequest({
    required final String key,
    required final String genre,
    final String? progression,
    final String? mood,
  }) = _$ChordsRequestImpl;

  factory _ChordsRequest.fromJson(Map<String, dynamic> json) =
      _$ChordsRequestImpl.fromJson;

  @override
  String get key;
  @override
  String get genre;
  @override
  String? get progression;
  @override
  String? get mood;

  /// Create a copy of ChordsRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChordsRequestImplCopyWith<_$ChordsRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChordsResponse _$ChordsResponseFromJson(Map<String, dynamic> json) {
  return _ChordsResponse.fromJson(json);
}

/// @nodoc
mixin _$ChordsResponse {
  List<String> get chords => throw _privateConstructorUsedError;
  String get progression => throw _privateConstructorUsedError;
  String? get pdfUrl => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;

  /// Serializes this ChordsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChordsResponseCopyWith<ChordsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChordsResponseCopyWith<$Res> {
  factory $ChordsResponseCopyWith(
    ChordsResponse value,
    $Res Function(ChordsResponse) then,
  ) = _$ChordsResponseCopyWithImpl<$Res, ChordsResponse>;
  @useResult
  $Res call({
    List<String> chords,
    String progression,
    String? pdfUrl,
    String? key,
  });
}

/// @nodoc
class _$ChordsResponseCopyWithImpl<$Res, $Val extends ChordsResponse>
    implements $ChordsResponseCopyWith<$Res> {
  _$ChordsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chords = null,
    Object? progression = null,
    Object? pdfUrl = freezed,
    Object? key = freezed,
  }) {
    return _then(
      _value.copyWith(
            chords: null == chords
                ? _value.chords
                : chords // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            progression: null == progression
                ? _value.progression
                : progression // ignore: cast_nullable_to_non_nullable
                      as String,
            pdfUrl: freezed == pdfUrl
                ? _value.pdfUrl
                : pdfUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChordsResponseImplCopyWith<$Res>
    implements $ChordsResponseCopyWith<$Res> {
  factory _$$ChordsResponseImplCopyWith(
    _$ChordsResponseImpl value,
    $Res Function(_$ChordsResponseImpl) then,
  ) = __$$ChordsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> chords,
    String progression,
    String? pdfUrl,
    String? key,
  });
}

/// @nodoc
class __$$ChordsResponseImplCopyWithImpl<$Res>
    extends _$ChordsResponseCopyWithImpl<$Res, _$ChordsResponseImpl>
    implements _$$ChordsResponseImplCopyWith<$Res> {
  __$$ChordsResponseImplCopyWithImpl(
    _$ChordsResponseImpl _value,
    $Res Function(_$ChordsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chords = null,
    Object? progression = null,
    Object? pdfUrl = freezed,
    Object? key = freezed,
  }) {
    return _then(
      _$ChordsResponseImpl(
        chords: null == chords
            ? _value._chords
            : chords // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        progression: null == progression
            ? _value.progression
            : progression // ignore: cast_nullable_to_non_nullable
                  as String,
        pdfUrl: freezed == pdfUrl
            ? _value.pdfUrl
            : pdfUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChordsResponseImpl implements _ChordsResponse {
  const _$ChordsResponseImpl({
    required final List<String> chords,
    required this.progression,
    this.pdfUrl,
    this.key,
  }) : _chords = chords;

  factory _$ChordsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChordsResponseImplFromJson(json);

  final List<String> _chords;
  @override
  List<String> get chords {
    if (_chords is EqualUnmodifiableListView) return _chords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chords);
  }

  @override
  final String progression;
  @override
  final String? pdfUrl;
  @override
  final String? key;

  @override
  String toString() {
    return 'ChordsResponse(chords: $chords, progression: $progression, pdfUrl: $pdfUrl, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChordsResponseImpl &&
            const DeepCollectionEquality().equals(other._chords, _chords) &&
            (identical(other.progression, progression) ||
                other.progression == progression) &&
            (identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_chords),
    progression,
    pdfUrl,
    key,
  );

  /// Create a copy of ChordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChordsResponseImplCopyWith<_$ChordsResponseImpl> get copyWith =>
      __$$ChordsResponseImplCopyWithImpl<_$ChordsResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChordsResponseImplToJson(this);
  }
}

abstract class _ChordsResponse implements ChordsResponse {
  const factory _ChordsResponse({
    required final List<String> chords,
    required final String progression,
    final String? pdfUrl,
    final String? key,
  }) = _$ChordsResponseImpl;

  factory _ChordsResponse.fromJson(Map<String, dynamic> json) =
      _$ChordsResponseImpl.fromJson;

  @override
  List<String> get chords;
  @override
  String get progression;
  @override
  String? get pdfUrl;
  @override
  String? get key;

  /// Create a copy of ChordsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChordsResponseImplCopyWith<_$ChordsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
