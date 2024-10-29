// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_other_user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivateOtherUserInfoModelImpl _$$PrivateOtherUserInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PrivateOtherUserInfoModelImpl(
      serverUid: json['serverUid'] as String?,
      isFavorite: json['isFavorite'] as bool? ?? false,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$PrivateOtherUserInfoModelImplToJson(
        _$PrivateOtherUserInfoModelImpl instance) =>
    <String, dynamic>{
      'serverUid': instance.serverUid,
      'isFavorite': instance.isFavorite,
      'tags': instance.tags,
    };
