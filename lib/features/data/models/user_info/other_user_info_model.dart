import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/features/data/models/user_info/components/private_other_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/other_user_info_entity.dart';
import 'package:light_ship/shared/services/mapper/json_key_converter.dart';
import 'package:light_ship/shared/services/mapper/user_info/main/other_user_info_model_mapper.dart';

part 'other_user_info_model.freezed.dart';
part 'other_user_info_model.g.dart';

@freezed
class OtherUserInfoModel with _$OtherUserInfoModel {
  const factory OtherUserInfoModel({
    @JsonKey(fromJson: JsonKeyConverter.publicUserInfoModelFromJson, toJson: JsonKeyConverter.publicUserInfoModelToJson)
    @Default(PublicUserInfoModel())
    PublicUserInfoModel publicInfo,
    @JsonKey(
        fromJson: JsonKeyConverter.privateOtherUserInfoModelFromJson,
        toJson: JsonKeyConverter.privateOtherUserInfoModelToJson)
    @Default(PrivateOtherUserInfoModel())
    PrivateOtherUserInfoModel privateInfo,
  }) = _OtherUserInfoModel;

  factory OtherUserInfoModel.fromJson(Map<String, dynamic> json) => _$OtherUserInfoModelFromJson(json);

  factory OtherUserInfoModel.fromEntity(OtherUserInfoEntity entity) => OtherUserInfoModelMapper.fromEntity(entity);

  factory OtherUserInfoModel.fromUser(User user) => OtherUserInfoModelMapper.fromUser(user);
}

extension OtherUserInfoModelX on OtherUserInfoModel {
  OtherUserInfoEntity toEntity() => OtherUserInfoModelMapper.toEntity(this);
}
