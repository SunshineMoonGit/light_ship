// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyUserInfoModelImpl _$$MyUserInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyUserInfoModelImpl(
      publicInfo: json['publicInfo'] == null
          ? const PublicUserInfoModel()
          : JsonKeyConverter.publicUserInfoModelFromJson(
              json['publicInfo'] as Map<String, dynamic>),
      privateInfo: json['privateInfo'] == null
          ? const PrivateMyUserInfoModel()
          : JsonKeyConverter.privateMyUserInfoModelFromJson(
              json['privateInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyUserInfoModelImplToJson(
        _$MyUserInfoModelImpl instance) =>
    <String, dynamic>{
      'publicInfo':
          JsonKeyConverter.publicUserInfoModelToJson(instance.publicInfo),
      'privateInfo':
          JsonKeyConverter.privateMyUserInfoModelToJson(instance.privateInfo),
    };
