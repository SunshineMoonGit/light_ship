// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:light_ship/config/app/const/app_svg.dart';
import 'package:light_ship/shared/extensions/string_extensions.dart';
import 'package:light_ship/shared/services/controller_manager/text/text_controller_manager.dart';
import 'package:light_ship/shared/services/items/public_detail_item.dart';
import 'package:light_ship/shared/services/mapper/user_info/public/public_user_info_entity_mapper.dart';

part 'public_user_info_entity.freezed.dart';

@freezed
class PublicUserInfoEntity with _$PublicUserInfoEntity {
  const PublicUserInfoEntity._();

  const factory PublicUserInfoEntity({
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
  }) = _PublicUserInfoEntity;

  List<PublicDetailItem> get detailInfo => [
        PublicDetailItem(svg: AppSvg.email, category: 'email', value: email.orDash()),
        PublicDetailItem(svg: AppSvg.company, category: 'company', value: company.orDash()),
        PublicDetailItem(svg: AppSvg.team, category: 'team', value: team.orDash()),
        PublicDetailItem(svg: AppSvg.phone, category: 'phone', value: phone.orDash()),
        PublicDetailItem(svg: AppSvg.fax, category: 'fax', value: fax.orDash()),
      ];

  static PublicUserInfoEntity fromController(String? imagePath, String uid, TextControllerManager manager) =>
      PublicUserInfoEntityMapper.fromController(imagePath, uid, manager);

  static List<PublicUserInfoEntity> removeFromList(List<PublicUserInfoEntity> list, PublicUserInfoEntity itemToRemove) {
    return list.where((item) => item.localUid != itemToRemove.localUid).toList();
  }

  static List<PublicUserInfoEntity> editInList(List<PublicUserInfoEntity> list, PublicUserInfoEntity updatedItem) {
    return list.map((item) => item.localUid == updatedItem.localUid ? updatedItem : item).toList();
  }
}
