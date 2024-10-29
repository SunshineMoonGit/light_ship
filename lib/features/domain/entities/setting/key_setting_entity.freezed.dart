// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_setting_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KeySettingEntity {
  String? get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeySettingEntityCopyWith<KeySettingEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeySettingEntityCopyWith<$Res> {
  factory $KeySettingEntityCopyWith(
          KeySettingEntity value, $Res Function(KeySettingEntity) then) =
      _$KeySettingEntityCopyWithImpl<$Res, KeySettingEntity>;
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class _$KeySettingEntityCopyWithImpl<$Res, $Val extends KeySettingEntity>
    implements $KeySettingEntityCopyWith<$Res> {
  _$KeySettingEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_value.copyWith(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeySettingEntityImplCopyWith<$Res>
    implements $KeySettingEntityCopyWith<$Res> {
  factory _$$KeySettingEntityImplCopyWith(_$KeySettingEntityImpl value,
          $Res Function(_$KeySettingEntityImpl) then) =
      __$$KeySettingEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class __$$KeySettingEntityImplCopyWithImpl<$Res>
    extends _$KeySettingEntityCopyWithImpl<$Res, _$KeySettingEntityImpl>
    implements _$$KeySettingEntityImplCopyWith<$Res> {
  __$$KeySettingEntityImplCopyWithImpl(_$KeySettingEntityImpl _value,
      $Res Function(_$KeySettingEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$KeySettingEntityImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$KeySettingEntityImpl extends _KeySettingEntity {
  const _$KeySettingEntityImpl({this.uid}) : super._();

  @override
  final String? uid;

  @override
  String toString() {
    return 'KeySettingEntity(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeySettingEntityImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeySettingEntityImplCopyWith<_$KeySettingEntityImpl> get copyWith =>
      __$$KeySettingEntityImplCopyWithImpl<_$KeySettingEntityImpl>(
          this, _$identity);
}

abstract class _KeySettingEntity extends KeySettingEntity {
  const factory _KeySettingEntity({final String? uid}) = _$KeySettingEntityImpl;
  const _KeySettingEntity._() : super._();

  @override
  String? get uid;
  @override
  @JsonKey(ignore: true)
  _$$KeySettingEntityImplCopyWith<_$KeySettingEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
