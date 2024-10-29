// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyUserInfoEntity {
  PublicUserInfoEntity get publicInfo => throw _privateConstructorUsedError;
  PrivateMyUserInfoEntity get privateInfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyUserInfoEntityCopyWith<MyUserInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserInfoEntityCopyWith<$Res> {
  factory $MyUserInfoEntityCopyWith(
          MyUserInfoEntity value, $Res Function(MyUserInfoEntity) then) =
      _$MyUserInfoEntityCopyWithImpl<$Res, MyUserInfoEntity>;
  @useResult
  $Res call(
      {PublicUserInfoEntity publicInfo, PrivateMyUserInfoEntity privateInfo});

  $PublicUserInfoEntityCopyWith<$Res> get publicInfo;
  $PrivateMyUserInfoEntityCopyWith<$Res> get privateInfo;
}

/// @nodoc
class _$MyUserInfoEntityCopyWithImpl<$Res, $Val extends MyUserInfoEntity>
    implements $MyUserInfoEntityCopyWith<$Res> {
  _$MyUserInfoEntityCopyWithImpl(this._value, this._then);

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
              as PrivateMyUserInfoEntity,
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
  $PrivateMyUserInfoEntityCopyWith<$Res> get privateInfo {
    return $PrivateMyUserInfoEntityCopyWith<$Res>(_value.privateInfo, (value) {
      return _then(_value.copyWith(privateInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyUserInfoEntityImplCopyWith<$Res>
    implements $MyUserInfoEntityCopyWith<$Res> {
  factory _$$MyUserInfoEntityImplCopyWith(_$MyUserInfoEntityImpl value,
          $Res Function(_$MyUserInfoEntityImpl) then) =
      __$$MyUserInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PublicUserInfoEntity publicInfo, PrivateMyUserInfoEntity privateInfo});

  @override
  $PublicUserInfoEntityCopyWith<$Res> get publicInfo;
  @override
  $PrivateMyUserInfoEntityCopyWith<$Res> get privateInfo;
}

/// @nodoc
class __$$MyUserInfoEntityImplCopyWithImpl<$Res>
    extends _$MyUserInfoEntityCopyWithImpl<$Res, _$MyUserInfoEntityImpl>
    implements _$$MyUserInfoEntityImplCopyWith<$Res> {
  __$$MyUserInfoEntityImplCopyWithImpl(_$MyUserInfoEntityImpl _value,
      $Res Function(_$MyUserInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicInfo = null,
    Object? privateInfo = null,
  }) {
    return _then(_$MyUserInfoEntityImpl(
      publicInfo: null == publicInfo
          ? _value.publicInfo
          : publicInfo // ignore: cast_nullable_to_non_nullable
              as PublicUserInfoEntity,
      privateInfo: null == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as PrivateMyUserInfoEntity,
    ));
  }
}

/// @nodoc

class _$MyUserInfoEntityImpl extends _MyUserInfoEntity {
  const _$MyUserInfoEntityImpl(
      {this.publicInfo = const PublicUserInfoEntity(),
      this.privateInfo = const PrivateMyUserInfoEntity()})
      : super._();

  @override
  @JsonKey()
  final PublicUserInfoEntity publicInfo;
  @override
  @JsonKey()
  final PrivateMyUserInfoEntity privateInfo;

  @override
  String toString() {
    return 'MyUserInfoEntity(publicInfo: $publicInfo, privateInfo: $privateInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyUserInfoEntityImpl &&
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
  _$$MyUserInfoEntityImplCopyWith<_$MyUserInfoEntityImpl> get copyWith =>
      __$$MyUserInfoEntityImplCopyWithImpl<_$MyUserInfoEntityImpl>(
          this, _$identity);
}

abstract class _MyUserInfoEntity extends MyUserInfoEntity {
  const factory _MyUserInfoEntity(
      {final PublicUserInfoEntity publicInfo,
      final PrivateMyUserInfoEntity privateInfo}) = _$MyUserInfoEntityImpl;
  const _MyUserInfoEntity._() : super._();

  @override
  PublicUserInfoEntity get publicInfo;
  @override
  PrivateMyUserInfoEntity get privateInfo;
  @override
  @JsonKey(ignore: true)
  _$$MyUserInfoEntityImplCopyWith<_$MyUserInfoEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
