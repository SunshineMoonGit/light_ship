import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/data/models/user_info/components/private_my_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';
import 'package:light_ship/features/domain/entities/user_info/my_user_info_entity.dart';
import 'package:light_ship/shared/services/mapper/json_key_converter.dart';
import 'package:light_ship/shared/services/mapper/user_info/main/my_user_info_model_mapper.dart';

part 'my_user_info_model.freezed.dart';
part 'my_user_info_model.g.dart';

@freezed
class MyUserInfoModel with _$MyUserInfoModel {
  const factory MyUserInfoModel({
    @JsonKey(
      fromJson: JsonKeyConverter.publicUserInfoModelFromJson,
      toJson: JsonKeyConverter.publicUserInfoModelToJson,
    )
    @Default(PublicUserInfoModel())
    PublicUserInfoModel publicInfo,
    //
    @JsonKey(
      fromJson: JsonKeyConverter.privateMyUserInfoModelFromJson,
      toJson: JsonKeyConverter.privateMyUserInfoModelToJson,
    )
    @Default(PrivateMyUserInfoModel())
    PrivateMyUserInfoModel privateInfo,
  }) = _MyUserInfoModel;

  factory MyUserInfoModel.fromJson(Map<String, dynamic> json) => _$MyUserInfoModelFromJson(json);

  factory MyUserInfoModel.fromEntity(MyUserInfoEntity entity) => MyUserInfoModelMapper.fromEntity(entity);

  factory MyUserInfoModel.fromUser(User user, LoginType type) => MyUserInfoModelMapper.fromUser(user, type);
}

extension MyUserInfoModelX on MyUserInfoModel {
  MyUserInfoEntity toEntity() => MyUserInfoModelMapper.toEntity(this);
}
