import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/enums/auth_enums.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_my_user_info_entity.dart';
import 'package:light_ship/shared/services/mapper/user_info/private/private_my_user_info_model_mapper.dart';

part 'private_my_user_info_model.freezed.dart';
part 'private_my_user_info_model.g.dart';

@freezed
class PrivateMyUserInfoModel with _$PrivateMyUserInfoModel {
  const factory PrivateMyUserInfoModel({
    String? serverUid,
    @Default(UserType.normal) UserType userType,
    @Default(LoginType.none) LoginType loginType,
    DateTime? createdAt,
  }) = _PrivateMyUserInfoModel;

  factory PrivateMyUserInfoModel.fromJson(Map<String, dynamic> json) => _$PrivateMyUserInfoModelFromJson(json);

  factory PrivateMyUserInfoModel.fromEntity(PrivateMyUserInfoEntity entity) =>
      PrivateMyUserInfoModelMapper.fromEntity(entity);

  // @override
  // Map<String, dynamic> toJson() => PrivateMyUserInfoModelMapper.toJson(this);
}

extension PrivateMyUserInfoModelX on PrivateMyUserInfoModel {
  PrivateMyUserInfoEntity toEntity() => PrivateMyUserInfoModelMapper.toEntity(this);
}
