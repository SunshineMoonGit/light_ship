// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_other_user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrivateOtherUserInfoModel _$PrivateOtherUserInfoModelFromJson(
    Map<String, dynamic> json) {
  return _PrivateOtherUserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$PrivateOtherUserInfoModel {
  String? get serverUid => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateOtherUserInfoModelCopyWith<PrivateOtherUserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateOtherUserInfoModelCopyWith<$Res> {
  factory $PrivateOtherUserInfoModelCopyWith(PrivateOtherUserInfoModel value,
          $Res Function(PrivateOtherUserInfoModel) then) =
      _$PrivateOtherUserInfoModelCopyWithImpl<$Res, PrivateOtherUserInfoModel>;
  @useResult
  $Res call({String? serverUid, bool isFavorite, List<String> tags});
}

/// @nodoc
class _$PrivateOtherUserInfoModelCopyWithImpl<$Res,
        $Val extends PrivateOtherUserInfoModel>
    implements $PrivateOtherUserInfoModelCopyWith<$Res> {
  _$PrivateOtherUserInfoModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PrivateOtherUserInfoModelImplCopyWith<$Res>
    implements $PrivateOtherUserInfoModelCopyWith<$Res> {
  factory _$$PrivateOtherUserInfoModelImplCopyWith(
          _$PrivateOtherUserInfoModelImpl value,
          $Res Function(_$PrivateOtherUserInfoModelImpl) then) =
      __$$PrivateOtherUserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? serverUid, bool isFavorite, List<String> tags});
}

/// @nodoc
class __$$PrivateOtherUserInfoModelImplCopyWithImpl<$Res>
    extends _$PrivateOtherUserInfoModelCopyWithImpl<$Res,
        _$PrivateOtherUserInfoModelImpl>
    implements _$$PrivateOtherUserInfoModelImplCopyWith<$Res> {
  __$$PrivateOtherUserInfoModelImplCopyWithImpl(
      _$PrivateOtherUserInfoModelImpl _value,
      $Res Function(_$PrivateOtherUserInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverUid = freezed,
    Object? isFavorite = null,
    Object? tags = null,
  }) {
    return _then(_$PrivateOtherUserInfoModelImpl(
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
@JsonSerializable()
class _$PrivateOtherUserInfoModelImpl implements _PrivateOtherUserInfoModel {
  const _$PrivateOtherUserInfoModelImpl(
      {this.serverUid,
      this.isFavorite = false,
      final List<String> tags = const []})
      : _tags = tags;

  factory _$PrivateOtherUserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrivateOtherUserInfoModelImplFromJson(json);

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
    return 'PrivateOtherUserInfoModel(serverUid: $serverUid, isFavorite: $isFavorite, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateOtherUserInfoModelImpl &&
            (identical(other.serverUid, serverUid) ||
                other.serverUid == serverUid) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, serverUid, isFavorite,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateOtherUserInfoModelImplCopyWith<_$PrivateOtherUserInfoModelImpl>
      get copyWith => __$$PrivateOtherUserInfoModelImplCopyWithImpl<
          _$PrivateOtherUserInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrivateOtherUserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _PrivateOtherUserInfoModel implements PrivateOtherUserInfoModel {
  const factory _PrivateOtherUserInfoModel(
      {final String? serverUid,
      final bool isFavorite,
      final List<String> tags}) = _$PrivateOtherUserInfoModelImpl;

  factory _PrivateOtherUserInfoModel.fromJson(Map<String, dynamic> json) =
      _$PrivateOtherUserInfoModelImpl.fromJson;

  @override
  String? get serverUid;
  @override
  bool get isFavorite;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$PrivateOtherUserInfoModelImplCopyWith<_$PrivateOtherUserInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
