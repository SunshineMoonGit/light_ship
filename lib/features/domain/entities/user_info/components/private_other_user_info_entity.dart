import 'package:freezed_annotation/freezed_annotation.dart';

part 'private_other_user_info_entity.freezed.dart';

@freezed
class PrivateOtherUserInfoEntity with _$PrivateOtherUserInfoEntity {
  const factory PrivateOtherUserInfoEntity({
    String? serverUid,
    @Default(false) bool isFavorite,
    @Default([]) List<String> tags,
  }) = _PrivateOtherUserInfoEntity;
}
