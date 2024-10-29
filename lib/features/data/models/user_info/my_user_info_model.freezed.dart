// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyUserInfoModel _$MyUserInfoModelFromJson(Map<String, dynamic> json) {
  return _MyUserInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MyUserInfoModel {
  @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson)
  PublicUserInfoModel get publicInfo => throw _privateConstructorUsedError; //
  @JsonKey(
      fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
  PrivateMyUserInfoModel get privateInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyUserInfoModelCopyWith<MyUserInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserInfoModelCopyWith<$Res> {
  factory $MyUserInfoModelCopyWith(
          MyUserInfoModel value, $Res Function(MyUserInfoModel) then) =
      _$MyUserInfoModelCopyWithImpl<$Res, MyUserInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      PublicUserInfoModel publicInfo,
      @JsonKey(
          fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
      PrivateMyUserInfoModel privateInfo});

  $PublicUserInfoModelCopyWith<$Res> get publicInfo;
  $PrivateMyUserInfoModelCopyWith<$Res> get privateInfo;
}

/// @nodoc
class _$MyUserInfoModelCopyWithImpl<$Res, $Val extends MyUserInfoModel>
    implements $MyUserInfoModelCopyWith<$Res> {
  _$MyUserInfoModelCopyWithImpl(this._value, this._then);

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
              as PrivateMyUserInfoModel,
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
  $PrivateMyUserInfoModelCopyWith<$Res> get privateInfo {
    return $PrivateMyUserInfoModelCopyWith<$Res>(_value.privateInfo, (value) {
      return _then(_value.copyWith(privateInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MyUserInfoModelImplCopyWith<$Res>
    implements $MyUserInfoModelCopyWith<$Res> {
  factory _$$MyUserInfoModelImplCopyWith(_$MyUserInfoModelImpl value,
          $Res Function(_$MyUserInfoModelImpl) then) =
      __$$MyUserInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      PublicUserInfoModel publicInfo,
      @JsonKey(
          fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
      PrivateMyUserInfoModel privateInfo});

  @override
  $PublicUserInfoModelCopyWith<$Res> get publicInfo;
  @override
  $PrivateMyUserInfoModelCopyWith<$Res> get privateInfo;
}

/// @nodoc
class __$$MyUserInfoModelImplCopyWithImpl<$Res>
    extends _$MyUserInfoModelCopyWithImpl<$Res, _$MyUserInfoModelImpl>
    implements _$$MyUserInfoModelImplCopyWith<$Res> {
  __$$MyUserInfoModelImplCopyWithImpl(
      _$MyUserInfoModelImpl _value, $Res Function(_$MyUserInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicInfo = null,
    Object? privateInfo = null,
  }) {
    return _then(_$MyUserInfoModelImpl(
      publicInfo: null == publicInfo
          ? _value.publicInfo
          : publicInfo // ignore: cast_nullable_to_non_nullable
              as PublicUserInfoModel,
      privateInfo: null == privateInfo
          ? _value.privateInfo
          : privateInfo // ignore: cast_nullable_to_non_nullable
              as PrivateMyUserInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyUserInfoModelImpl implements _MyUserInfoModel {
  const _$MyUserInfoModelImpl(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      this.publicInfo = const PublicUserInfoModel(),
      @JsonKey(
          fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
      this.privateInfo = const PrivateMyUserInfoModel()});

  factory _$MyUserInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyUserInfoModelImplFromJson(json);

  @override
  @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson)
  final PublicUserInfoModel publicInfo;
//
  @override
  @JsonKey(
      fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
  final PrivateMyUserInfoModel privateInfo;

  @override
  String toString() {
    return 'MyUserInfoModel(publicInfo: $publicInfo, privateInfo: $privateInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyUserInfoModelImpl &&
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
  _$$MyUserInfoModelImplCopyWith<_$MyUserInfoModelImpl> get copyWith =>
      __$$MyUserInfoModelImplCopyWithImpl<_$MyUserInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyUserInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MyUserInfoModel implements MyUserInfoModel {
  const factory _MyUserInfoModel(
      {@JsonKey(
          fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
          toJson: JsonKeyConverter.publicUserInfoModelToJson)
      final PublicUserInfoModel publicInfo,
      @JsonKey(
          fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
          toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
      final PrivateMyUserInfoModel privateInfo}) = _$MyUserInfoModelImpl;

  factory _MyUserInfoModel.fromJson(Map<String, dynamic> json) =
      _$MyUserInfoModelImpl.fromJson;

  @override
  @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson)
  PublicUserInfoModel get publicInfo;
  @override //
  @JsonKey(
      fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateMyUserInfoModelToJson)
  PrivateMyUserInfoModel get privateInfo;
  @override
  @JsonKey(ignore: true)
  _$$MyUserInfoModelImplCopyWith<_$MyUserInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
