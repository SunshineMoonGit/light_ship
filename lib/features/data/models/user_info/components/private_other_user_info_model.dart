import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/features/domain/entities/user_info/components/private_other_user_info_entity.dart';
import 'package:light_ship/shared/services/mapper/user_info/private/private_other_user_info_model_mapper.dart';

part 'private_other_user_info_model.freezed.dart';
part 'private_other_user_info_model.g.dart';

@freezed
class PrivateOtherUserInfoModel with _$PrivateOtherUserInfoModel {
  const factory PrivateOtherUserInfoModel({
    String? serverUid,
    @Default(false) bool isFavorite,
    @Default([]) List<String> tags,
  }) = _PrivateOtherUserInfoModel;

  factory PrivateOtherUserInfoModel.fromJson(Map<String, dynamic> json) => _PrivateOtherUserInfoModel.fromJson(json);

  factory PrivateOtherUserInfoModel.fromEntity(PrivateOtherUserInfoEntity entity) =>
      PrivateOtherUserInfoModelMapper.fromEntity(entity);

  // @override
  // Map<String, dynamic> toJson() => PrivateOtherUserInfoModelMapper.toJson(this);
}

extension PrivateOtherUserInfoModelX on PrivateOtherUserInfoModel {
  PrivateOtherUserInfoEntity toEntity() => PrivateOtherUserInfoModelMapper.toEntity(this);
}
