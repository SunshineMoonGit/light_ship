// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_my_user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateMyUserInfoModelImpl _$$PrivateMyUserInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivateMyUserInfoModelImpl(
      serverUid: json['serverUid'] as String?,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.normal,
      loginType: $enumDecodeNullable(_$LoginTypeEnumMap, json['loginType']) ??
          LoginType.none,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$PrivateMyUserInfoModelImplToJson(
        _$PrivateMyUserInfoModelImpl instance) =>
    <String, dynamic>{
      'serverUid': instance.serverUid,
      'userType': _$UserTypeEnumMap[instance.userType]!,
      'loginType': _$LoginTypeEnumMap[instance.loginType]!,
      'createdAt': instance.createdAt?.toIso8601String(),
    };

const _$UserTypeEnumMap = {
  UserType.normal: 'normal',
  UserType.premium: 'premium',
  UserType.master: 'master',
};

const _$LoginTypeEnumMap = {
  LoginType.none: 'none',
  LoginType.google: 'google',
  LoginType.apple: 'apple',
};
