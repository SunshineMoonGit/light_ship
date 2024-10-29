// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtherUserInfoModelImpl _$$OtherUserInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OtherUserInfoModelImpl(
      publicInfo: json['publicInfo'] == null
          ? const PublicUserInfoModel()
          : JsonKeyConverter.publicUserInfoModelFromJson(
              json['publicInfo'] as Map<String, dynamic>),
      privateInfo: json['privateInfo'] == null
          ? const PrivateOtherUserInfoModel()
          : JsonKeyConverter.privateOtherUserInfoModelFromJson(
              json['privateInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtherUserInfoModelImplToJson(
        _$OtherUserInfoModelImpl instance) =>
    <String, dynamic>{
      'publicInfo':
          JsonKeyConverter.publicUserInfoModelToJson(instance.publicInfo),
      'privateInfo': JsonKeyConverter.privateOtherUserInfoModelToJson(
          instance.privateInfo),
    };
