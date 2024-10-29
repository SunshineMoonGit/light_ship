// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PublicUserInfoModelImpl _$$PublicUserInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PublicUserInfoModelImpl(
      localUid: json['localUid'] as String?,
      name: json['name'] as String?,
      profileImage: json['profileImage'] as String?,
      cardImage: json['cardImage'] as String?,
      email: json['email'] as String?,
      team: json['team'] as String?,
      company: json['company'] as String?,
      phone: json['phone'] as String?,
      fax: json['fax'] as String?,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      extra:
          (json['extra'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$PublicUserInfoModelImplToJson(
        _$PublicUserInfoModelImpl instance) =>
    <String, dynamic>{
      'localUid': instance.localUid,
      'name': instance.name,
      'profileImage': instance.profileImage,
      'cardImage': instance.cardImage,
      'email': instance.email,
      'team': instance.team,
      'company': instance.company,
      'phone': instance.phone,
      'fax': instance.fax,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'extra': instance.extra,
    };
