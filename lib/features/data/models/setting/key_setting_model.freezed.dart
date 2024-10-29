// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KeySettingModel _$KeySettingModelFromJson(Map<String, dynamic> json) {
  return _KeySettingModel.fromJson(json);
}

/// @nodoc
mixin _$KeySettingModel {
  String? get uid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeySettingModelCopyWith<KeySettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeySettingModelCopyWith<$Res> {
  factory $KeySettingModelCopyWith(
          KeySettingModel value, $Res Function(KeySettingModel) then) =
      _$KeySettingModelCopyWithImpl<$Res, KeySettingModel>;
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class _$KeySettingModelCopyWithImpl<$Res, $Val extends KeySettingModel>
    implements $KeySettingModelCopyWith<$Res> {
  _$KeySettingModelCopyWithImpl(this._value, this._then);

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
abstract class _$$KeySettingModelImplCopyWith<$Res>
    implements $KeySettingModelCopyWith<$Res> {
  factory _$$KeySettingModelImplCopyWith(_$KeySettingModelImpl value,
          $Res Function(_$KeySettingModelImpl) then) =
      __$$KeySettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? uid});
}

/// @nodoc
class __$$KeySettingModelImplCopyWithImpl<$Res>
    extends _$KeySettingModelCopyWithImpl<$Res, _$KeySettingModelImpl>
    implements _$$KeySettingModelImplCopyWith<$Res> {
  __$$KeySettingModelImplCopyWithImpl(
      _$KeySettingModelImpl _value, $Res Function(_$KeySettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = freezed,
  }) {
    return _then(_$KeySettingModelImpl(
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeySettingModelImpl implements _KeySettingModel {
  const _$KeySettingModelImpl({this.uid});

  factory _$KeySettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeySettingModelImplFromJson(json);

  @override
  final String? uid;

  @override
  String toString() {
    return 'KeySettingModel(uid: $uid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeySettingModelImpl &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeySettingModelImplCopyWith<_$KeySettingModelImpl> get copyWith =>
      __$$KeySettingModelImplCopyWithImpl<_$KeySettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeySettingModelImplToJson(
      this,
    );
  }
}

abstract class _KeySettingModel implements KeySettingModel {
  const factory _KeySettingModel({final String? uid}) = _$KeySettingModelImpl;

  factory _KeySettingModel.fromJson(Map<String, dynamic> json) =
      _$KeySettingModelImpl.fromJson;

  @override
  String? get uid;
  @override
  @JsonKey(ignore: true)
  _$$KeySettingModelImplCopyWith<_$KeySettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
