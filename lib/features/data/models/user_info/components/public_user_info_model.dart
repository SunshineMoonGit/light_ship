// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/features/domain/entities/user_info/components/public_user_info_entity.dart';
import 'package:light_ship/shared/services/mapper/user_info/public/public_user_info_model_mapper.dart';

part 'public_user_info_model.freezed.dart';
part 'public_user_info_model.g.dart';

@freezed
class PublicUserInfoModel with _$PublicUserInfoModel {
  const factory PublicUserInfoModel({
    String? localUid,
    String? name,
    String? profileImage,
    String? cardImage,
    String? email,
    String? team,
    String? company,
    String? phone,
    String? fax,
    DateTime? lastUpdated,
    @Default([]) List<String> extra,
  }) = _PublicUserInfoModel;

  factory PublicUserInfoModel.fromJson(Map<String, dynamic> json) => _$PublicUserInfoModelFromJson(json);

  factory PublicUserInfoModel.fromEntity(PublicUserInfoEntity entity) => PublicUserInfoModelMapper.fromEntity(entity);
}

extension PublicUserInfoModelX on PublicUserInfoModel {
  PublicUserInfoEntity toEntity() => PublicUserInfoModelMapper.toEntity(this);
}
