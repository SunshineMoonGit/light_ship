// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtherUserInfoModel _$OtherUserInfoModelFromJson(Map<String, dynamic> json) {
  return _OtherUserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$OtherUserInfoModel {
  @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson)
  PublicUserInfoModel get publicInfo => throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
  PrivateOtherUserInfoModel get privateInfo =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherUserInfoModelCopyWith<OtherUserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherUserInfoModelCopyWith<$Res> {
  factory $OtherUserInfoModelCopyWith(
          OtherUserInfoModel value, $Res Function(OtherUserInfoModel) then) =
      _$OtherUserInfoModelCopyWithImpl<$Res, OtherUserInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      PublicUserInfoModel publicInfo,
      @JsonKey(
          fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
      PrivateOtherUserInfoModel privateInfo});

  $PublicUserInfoModelCopyWith<$Res> get publicInfo;
  $PrivateOtherUserInfoModelCopyWith<$Res> get privateInfo;
}

/// @nodoc
class _$OtherUserInfoModelCopyWithImpl<$Res, $Val extends OtherUserInfoModel>
    implements $OtherUserInfoModelCopyWith<$Res> {
  _$OtherUserInfoModelCopyWithImpl(this._value, this._then);

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
              as PublicUserInfoModel,
      privateInfo: null == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as PrivateOtherUserInfoModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicUserInfoModelCopyWith<$Res> get publicInfo {
    return $PublicUserInfoModelCopyWith<$Res>(_value.publicInfo, (value) {
      return _then(_value.copyWith(publicInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PrivateOtherUserInfoModelCopyWith<$Res> get privateInfo {
    return $PrivateOtherUserInfoModelCopyWith<$Res>(_value.privateInfo,
        (value) {
      return _then(_value.copyWith(privateInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OtherUserInfoModelImplCopyWith<$Res>
    implements $OtherUserInfoModelCopyWith<$Res> {
  factory _$$OtherUserInfoModelImplCopyWith(_$OtherUserInfoModelImpl value,
          $Res Function(_$OtherUserInfoModelImpl) then) =
      __$$OtherUserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      PublicUserInfoModel publicInfo,
      @JsonKey(
          fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
      PrivateOtherUserInfoModel privateInfo});

  @override
  $PublicUserInfoModelCopyWith<$Res> get publicInfo;
  @override
  $PrivateOtherUserInfoModelCopyWith<$Res> get privateInfo;
}

/// @nodoc
class __$$OtherUserInfoModelImplCopyWithImpl<$Res>
    extends _$OtherUserInfoModelCopyWithImpl<$Res, _$OtherUserInfoModelImpl>
    implements _$$OtherUserInfoModelImplCopyWith<$Res> {
  __$$OtherUserInfoModelImplCopyWithImpl(_$OtherUserInfoModelImpl _value,
      $Res Function(_$OtherUserInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicInfo = null,
    Object? privateInfo = null,
  }) {
    return _then(_$OtherUserInfoModelImpl(
      publicInfo: null == publicInfo
          ? _value.publicInfo
          : publicInfo // ignore: cast_nullable_to_non_nullable
              as PublicUserInfoModel,
      privateInfo: null == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as PrivateOtherUserInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtherUserInfoModelImpl implements _OtherUserInfoModel {
  const _$OtherUserInfoModelImpl(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      this.publicInfo = const PublicUserInfoModel(),
      @JsonKey(
          fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
      this.privateInfo = const PrivateOtherUserInfoModel()});

  factory _$OtherUserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtherUserInfoModelImplFromJson(json);

  @override
  @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson)
  final PublicUserInfoModel publicInfo;
  @override
  @JsonKey(
      fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
  final PrivateOtherUserInfoModel privateInfo;

  @override
  String toString() {
    return 'OtherUserInfoModel(publicInfo: $publicInfo, privateInfo: $privateInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtherUserInfoModelImpl &&
            (identical(other.publicInfo, publicInfo) ||
                other.publicInfo == publicInfo) &&
            (identical(other.privateInfo, privateInfo) ||
                other.privateInfo == privateInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicInfo, privateInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtherUserInfoModelImplCopyWith<_$OtherUserInfoModelImpl> get copyWith =>
      __$$OtherUserInfoModelImplCopyWithImpl<_$OtherUserInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtherUserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _OtherUserInfoModel implements OtherUserInfoModel {
  const factory _OtherUserInfoModel(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      final PublicUserInfoModel publicInfo,
      @JsonKey(
          fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
      final PrivateOtherUserInfoModel privateInfo}) = _$OtherUserInfoModelImpl;

  factory _OtherUserInfoModel.fromJson(Map<String, dynamic> json) =
      _$OtherUserInfoModelImpl.fromJson;

  @override
  @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson)
  PublicUserInfoModel get publicInfo;
  @override
  @JsonKey(
      fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
  PrivateOtherUserInfoModel get privateInfo;
  @override
  @JsonKey(ignore: true)
  _$$OtherUserInfoModelImplCopyWith<_$OtherUserInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
