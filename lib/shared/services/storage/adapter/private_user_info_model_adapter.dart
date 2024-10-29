// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:light_ship/config/app/enums/auth_enums.dart';
// import 'package:light_ship/features/data/models/user_info/private_user_info_model.dart';

// class PrivateUserInfoModelAdapter extends TypeAdapter<PrivateUserInfoModel> {
//   @override
//   final int typeId = 1;

//   @override
//   PrivateUserInfoModel read(BinaryReader reader) {
//     return PrivateUserInfoModel(
//       userType: UserType.values[reader.readByte()],
//       loginType: LoginType.values[reader.readByte()],
//       lastLoginAt: reader.readString(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, PrivateUserInfoModel obj) {
//     writer.writeByte(obj.userType.index);
//     writer.writeByte(obj.loginType.index);
//     writer.writeString(obj.lastLoginAt);
//   }
// }
