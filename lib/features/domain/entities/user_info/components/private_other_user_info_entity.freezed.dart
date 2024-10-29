// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_other_user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrivateOtherUserInfoEntity {
  String? get serverUid => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivateOtherUserInfoEntityCopyWith<PrivateOtherUserInfoEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateOtherUserInfoEntityCopyWith<$Res> {
  factory $PrivateOtherUserInfoEntityCopyWith(PrivateOtherUserInfoEntity value,
          $Res Function(PrivateOtherUserInfoEntity) then) =
      _$PrivateOtherUserInfoEntityCopyWithImpl<$Res,
          PrivateOtherUserInfoEntity>;
  @useResult
  $Res call({String? serverUid, bool isFavorite, List<String> tags});
}

/// @nodoc
class _$PrivateOtherUserInfoEntityCopyWithImpl<$Res,
        $Val extends PrivateOtherUserInfoEntity>
    implements $PrivateOtherUserInfoEntityCopyWith<$Res> {
  _$PrivateOtherUserInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverUid = freezed,
    Object? isFavorite = null,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      serverUid: freezed == serverUid
          ? _value.serverUid
          : serverUid // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateOtherUserInfoEntityImplCopyWith<$Res>
    implements $PrivateOtherUserInfoEntityCopyWith<$Res> {
  factory _$$PrivateOtherUserInfoEntityImplCopyWith(
          _$PrivateOtherUserInfoEntityImpl value,
          $Res Function(_$PrivateOtherUserInfoEntityImpl) then) =
      __$$PrivateOtherUserInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? serverUid, bool isFavorite, List<String> tags});
}

/// @nodoc
class __$$PrivateOtherUserInfoEntityImplCopyWithImpl<$Res>
    extends _$PrivateOtherUserInfoEntityCopyWithImpl<$Res,
        _$PrivateOtherUserInfoEntityImpl>
    implements _$$PrivateOtherUserInfoEntityImplCopyWith<$Res> {
  __$$PrivateOtherUserInfoEntityImplCopyWithImpl(
      _$PrivateOtherUserInfoEntityImpl _value,
      $Res Function(_$PrivateOtherUserInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverUid = freezed,
    Object? isFavorite = null,
    Object? tags = null,
  }) {
    return _then(_$PrivateOtherUserInfoEntityImpl(
      serverUid: freezed == serverUid
          ? _value.serverUid
          : serverUid // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PrivateOtherUserInfoEntityImpl implements _PrivateOtherUserInfoEntity {
  const _$PrivateOtherUserInfoEntityImpl(
      {this.serverUid,
      this.isFavorite = false,
      final List<String> tags = const []})
      : _tags = tags;

  @override
  final String? serverUid;
  @override
  @JsonKey()
  final bool isFavorite;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'PrivateOtherUserInfoEntity(serverUid: $serverUid, isFavorite: $isFavorite, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateOtherUserInfoEntityImpl &&
            (identical(other.serverUid, serverUid) ||
                other.serverUid == serverUid) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverUid, isFavorite,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateOtherUserInfoEntityImplCopyWith<_$PrivateOtherUserInfoEntityImpl>
      get copyWith => __$$PrivateOtherUserInfoEntityImplCopyWithImpl<
          _$PrivateOtherUserInfoEntityImpl>(this, _$identity);
}

abstract class _PrivateOtherUserInfoEntity
    implements PrivateOtherUserInfoEntity {
  const factory _PrivateOtherUserInfoEntity(
      {final String? serverUid,
      final bool isFavorite,
      final List<String> tags}) = _$PrivateOtherUserInfoEntityImpl;

  @override
  String? get serverUid;
  @override
  bool get isFavorite;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$PrivateOtherUserInfoEntityImplCopyWith<_$PrivateOtherUserInfoEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
