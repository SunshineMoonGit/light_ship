import 'package:light_ship/features/data/models/user_info/components/private_my_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/components/private_other_user_info_model.dart';
import 'package:light_ship/features/data/models/user_info/components/public_user_info_model.dart';

class JsonKeyConverter {
  static Map<String, dynamic> publicUserInfoModelToJson(PublicUserInfoModel data) {
    return data.toJson();
  }

  static PublicUserInfoModel publicUserInfoModelFromJson(Map<String, dynamic> json) {
    return PublicUserInfoModel.fromJson(json);
  }

  static Map<String, dynamic> privateMyUserInfoModelToJson(PrivateMyUserInfoModel data) {
    return data.toJson();
  }

  static PrivateMyUserInfoModel privateMyUserInfoModelFromJson(Map<String, dynamic> json) {
    return PrivateMyUserInfoModel.fromJson(json);
  }

  static Map<String, dynamic> privateOtherUserInfoModelToJson(PrivateOtherUserInfoModel data) {
    return data.toJson();
  }

  static PrivateOtherUserInfoModel privateOtherUserInfoModelFromJson(Map<String, dynamic> json) {
    return PrivateOtherUserInfoModel.fromJson(json);
  }
}
