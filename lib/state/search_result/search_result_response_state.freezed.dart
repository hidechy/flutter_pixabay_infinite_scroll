// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_response_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultResponseState {
  List<ImageList> get imageList => throw _privateConstructorUsedError;
  int get hitCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultResponseStateCopyWith<SearchResultResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultResponseStateCopyWith<$Res> {
  factory $SearchResultResponseStateCopyWith(SearchResultResponseState value,
          $Res Function(SearchResultResponseState) then) =
      _$SearchResultResponseStateCopyWithImpl<$Res, SearchResultResponseState>;
  @useResult
  $Res call({List<ImageList> imageList, int hitCount});
}

/// @nodoc
class _$SearchResultResponseStateCopyWithImpl<$Res,
        $Val extends SearchResultResponseState>
    implements $SearchResultResponseStateCopyWith<$Res> {
  _$SearchResultResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
    Object? hitCount = null,
  }) {
    return _then(_value.copyWith(
      imageList: null == imageList
          ? _value.imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageList>,
      hitCount: null == hitCount
          ? _value.hitCount
          : hitCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultResponseStateImplCopyWith<$Res>
    implements $SearchResultResponseStateCopyWith<$Res> {
  factory _$$SearchResultResponseStateImplCopyWith(
          _$SearchResultResponseStateImpl value,
          $Res Function(_$SearchResultResponseStateImpl) then) =
      __$$SearchResultResponseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ImageList> imageList, int hitCount});
}

/// @nodoc
class __$$SearchResultResponseStateImplCopyWithImpl<$Res>
    extends _$SearchResultResponseStateCopyWithImpl<$Res,
        _$SearchResultResponseStateImpl>
    implements _$$SearchResultResponseStateImplCopyWith<$Res> {
  __$$SearchResultResponseStateImplCopyWithImpl(
      _$SearchResultResponseStateImpl _value,
      $Res Function(_$SearchResultResponseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageList = null,
    Object? hitCount = null,
  }) {
    return _then(_$SearchResultResponseStateImpl(
      null == imageList
          ? _value._imageList
          : imageList // ignore: cast_nullable_to_non_nullable
              as List<ImageList>,
      null == hitCount
          ? _value.hitCount
          : hitCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchResultResponseStateImpl implements _SearchResultResponseState {
  const _$SearchResultResponseStateImpl(
      final List<ImageList> imageList, this.hitCount)
      : _imageList = imageList;

  final List<ImageList> _imageList;
  @override
  List<ImageList> get imageList {
    if (_imageList is EqualUnmodifiableListView) return _imageList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageList);
  }

  @override
  final int hitCount;

  @override
  String toString() {
    return 'SearchResultResponseState(imageList: $imageList, hitCount: $hitCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultResponseStateImpl &&
            const DeepCollectionEquality()
                .equals(other._imageList, _imageList) &&
            (identical(other.hitCount, hitCount) ||
                other.hitCount == hitCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_imageList), hitCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultResponseStateImplCopyWith<_$SearchResultResponseStateImpl>
      get copyWith => __$$SearchResultResponseStateImplCopyWithImpl<
          _$SearchResultResponseStateImpl>(this, _$identity);
}

abstract class _SearchResultResponseState implements SearchResultResponseState {
  const factory _SearchResultResponseState(
          final List<ImageList> imageList, final int hitCount) =
      _$SearchResultResponseStateImpl;

  @override
  List<ImageList> get imageList;
  @override
  int get hitCount;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultResponseStateImplCopyWith<_$SearchResultResponseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
