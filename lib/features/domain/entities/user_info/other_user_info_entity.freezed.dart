// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtherUserInfoEntity {
  PublicUserInfoEntity get publicInfo => throw _privateConstructorUsedError;
  PrivateOtherUserInfoEntity get privateInfo =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtherUserInfoEntityCopyWith<OtherUserInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherUserInfoEntityCopyWith<$Res> {
  factory $OtherUserInfoEntityCopyWith(
          OtherUserInfoEntity value, $Res Function(OtherUserInfoEntity) then) =
      _$OtherUserInfoEntityCopyWithImpl<$Res, OtherUserInfoEntity>;
  @useResult
  $Res call(
      {PublicUserInfoEntity publicInfo,
      PrivateOtherUserInfoEntity privateInfo});

  $PublicUserInfoEntityCopyWith<$Res> get publicInfo;
  $PrivateOtherUserInfoEntityCopyWith<$Res> get privateInfo;
}

/// @nodoc
class _$OtherUserInfoEntityCopyWithImpl<$Res, $Val extends OtherUserInfoEntity>
    implements $OtherUserInfoEntityCopyWith<$Res> {
  _$OtherUserInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicInfo = null,
    Object? privateInfo = null,
  }) {
    return _then(_value.copyWith(
      publicInfo: null == publicInfo
          ? _value.publicInfo
          : publicInfo // ignore: cast_nullable_to_non_nullable
              as PublicUserInfoEntity,
      privateInfo: null == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as PrivateOtherUserInfoEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicUserInfoEntityCopyWith<$Res> get publicInfo {
    return $PublicUserInfoEntityCopyWith<$Res>(_value.publicInfo, (value) {
      return _then(_value.copyWith(publicInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivateOtherUserInfoEntityCopyWith<$Res> get privateInfo {
    return $PrivateOtherUserInfoEntityCopyWith<$Res>(_value.privateInfo,
        (value) {
      return _then(_value.copyWith(privateInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherUserInfoEntityImplCopyWith<$Res>
    implements $OtherUserInfoEntityCopyWith<$Res> {
  factory _$$OtherUserInfoEntityImplCopyWith(_$OtherUserInfoEntityImpl value,
          $Res Function(_$OtherUserInfoEntityImpl) then) =
      __$$OtherUserInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PublicUserInfoEntity publicInfo,
      PrivateOtherUserInfoEntity privateInfo});

  @override
  $PublicUserInfoEntityCopyWith<$Res> get publicInfo;
  @override
  $PrivateOtherUserInfoEntityCopyWith<$Res> get privateInfo;
}

/// @nodoc
class __$$OtherUserInfoEntityImplCopyWithImpl<$Res>
    extends _$OtherUserInfoEntityCopyWithImpl<$Res, _$OtherUserInfoEntityImpl>
    implements _$$OtherUserInfoEntityImplCopyWith<$Res> {
  __$$OtherUserInfoEntityImplCopyWithImpl(_$OtherUserInfoEntityImpl _value,
      $Res Function(_$OtherUserInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicInfo = null,
    Object? privateInfo = null,
  }) {
    return _then(_$OtherUserInfoEntityImpl(
      publicInfo: null == publicInfo
          ? _value.publicInfo
          : publicInfo // ignore: cast_nullable_to_non_nullable
              as PublicUserInfoEntity,
      privateInfo: null == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as PrivateOtherUserInfoEntity,
    ));
  }
}

/// @nodoc

class _$OtherUserInfoEntityImpl extends _OtherUserInfoEntity {
  const _$OtherUserInfoEntityImpl(
      {this.publicInfo = const PublicUserInfoEntity(),
      this.privateInfo = const PrivateOtherUserInfoEntity()})
      : super._();

  @override
  @JsonKey()
  final PublicUserInfoEntity publicInfo;
  @override
  @JsonKey()
  final PrivateOtherUserInfoEntity privateInfo;

  @override
  String toString() {
    return 'OtherUserInfoEntity(publicInfo: $publicInfo, privateInfo: $privateInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherUserInfoEntityImpl &&
            (identical(other.publicInfo, publicInfo) ||
                other.publicInfo == publicInfo) &&
            (identical(other.privateInfo, privateInfo) ||
                other.privateInfo == privateInfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicInfo, privateInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherUserInfoEntityImplCopyWith<_$OtherUserInfoEntityImpl> get copyWith =>
      __$$OtherUserInfoEntityImplCopyWithImpl<_$OtherUserInfoEntityImpl>(
          this, _$identity);
}

abstract class _OtherUserInfoEntity extends OtherUserInfoEntity {
  const factory _OtherUserInfoEntity(
          {final PublicUserInfoEntity publicInfo,
          final PrivateOtherUserInfoEntity privateInfo}) =
      _$OtherUserInfoEntityImpl;
  const _OtherUserInfoEntity._() : super._();

  @override
  PublicUserInfoEntity get publicInfo;
  @override
  PrivateOtherUserInfoEntity get privateInfo;
  @override
  @JsonKey(ignore: true)
  _$$OtherUserInfoEntityImplCopyWith<_$OtherUserInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
