// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_my_user_info_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrivateMyUserInfoEntity {
  String? get serverUid => throw _privateConstructorUsedError;
  UserType get userType => throw _privateConstructorUsedError;
  LoginType get loginType => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivateMyUserInfoEntityCopyWith<PrivateMyUserInfoEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateMyUserInfoEntityCopyWith<$Res> {
  factory $PrivateMyUserInfoEntityCopyWith(PrivateMyUserInfoEntity value,
          $Res Function(PrivateMyUserInfoEntity) then) =
      _$PrivateMyUserInfoEntityCopyWithImpl<$Res, PrivateMyUserInfoEntity>;
  @useResult
  $Res call(
      {String? serverUid,
      UserType userType,
      LoginType loginType,
      DateTime? createdAt});
}

/// @nodoc
class _$PrivateMyUserInfoEntityCopyWithImpl<$Res,
        $Val extends PrivateMyUserInfoEntity>
    implements $PrivateMyUserInfoEntityCopyWith<$Res> {
  _$PrivateMyUserInfoEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverUid = freezed,
    Object? userType = null,
    Object? loginType = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      serverUid: freezed == serverUid
          ? _value.serverUid
          : serverUid // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateMyUserInfoEntityImplCopyWith<$Res>
    implements $PrivateMyUserInfoEntityCopyWith<$Res> {
  factory _$$PrivateMyUserInfoEntityImplCopyWith(
          _$PrivateMyUserInfoEntityImpl value,
          $Res Function(_$PrivateMyUserInfoEntityImpl) then) =
      __$$PrivateMyUserInfoEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? serverUid,
      UserType userType,
      LoginType loginType,
      DateTime? createdAt});
}

/// @nodoc
class __$$PrivateMyUserInfoEntityImplCopyWithImpl<$Res>
    extends _$PrivateMyUserInfoEntityCopyWithImpl<$Res,
        _$PrivateMyUserInfoEntityImpl>
    implements _$$PrivateMyUserInfoEntityImplCopyWith<$Res> {
  __$$PrivateMyUserInfoEntityImplCopyWithImpl(
      _$PrivateMyUserInfoEntityImpl _value,
      $Res Function(_$PrivateMyUserInfoEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverUid = freezed,
    Object? userType = null,
    Object? loginType = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$PrivateMyUserInfoEntityImpl(
      serverUid: freezed == serverUid
          ? _value.serverUid
          : serverUid // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType,
      loginType: null == loginType
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as LoginType,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$PrivateMyUserInfoEntityImpl extends _PrivateMyUserInfoEntity {
  const _$PrivateMyUserInfoEntityImpl(
      {this.serverUid,
      this.userType = UserType.normal,
      this.loginType = LoginType.none,
      this.createdAt})
      : super._();

  @override
  final String? serverUid;
  @override
  @JsonKey()
  final UserType userType;
  @override
  @JsonKey()
  final LoginType loginType;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'PrivateMyUserInfoEntity(serverUid: $serverUid, userType: $userType, loginType: $loginType, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateMyUserInfoEntityImpl &&
            (identical(other.serverUid, serverUid) ||
                other.serverUid == serverUid) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.loginType, loginType) ||
                other.loginType == loginType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, serverUid, userType, loginType, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateMyUserInfoEntityImplCopyWith<_$PrivateMyUserInfoEntityImpl>
      get copyWith => __$$PrivateMyUserInfoEntityImplCopyWithImpl<
          _$PrivateMyUserInfoEntityImpl>(this, _$identity);
}

abstract class _PrivateMyUserInfoEntity extends PrivateMyUserInfoEntity {
  const factory _PrivateMyUserInfoEntity(
      {final String? serverUid,
      final UserType userType,
      final LoginType loginType,
      final DateTime? createdAt}) = _$PrivateMyUserInfoEntityImpl;
  const _PrivateMyUserInfoEntity._() : super._();

  @override
  String? get serverUid;
  @override
  UserType get userType;
  @override
  LoginType get loginType;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PrivateMyUserInfoEntityImplCopyWith<_$PrivateMyUserInfoEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
