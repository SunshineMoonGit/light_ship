// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:light_ship/features/data/models/user_info/public_user_info_model.dart';

// class OtherUserInfoModelAdapter extends TypeAdapter<PublicUserInfoModel> {
//   @override
//   final int typeId = 0;

//   @override
//   PublicUserInfoModel read(BinaryReader reader) {
//     return PublicUserInfoModel(
//       uid: reader.readString(),
//       name: reader.readString(),
//       profileImage: reader.readString(),
//       cardImage: reader.readString(),
//       email: reader.readString(),
//       team: reader.readString(),
//       company: reader.readString(),
//       phone: reader.readString(),
//       fax: reader.readString(),
//       lastUpdate: reader.readString(),
//       createdAt: reader.readString(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, PublicUserInfoModel obj) {
//     writer.writeString(obj.uid);
//     writer.writeString(obj.name);
//     writer.writeString(obj.profileImage);
//     writer.writeString(obj.cardImage);
//     writer.writeString(obj.email);
//     writer.writeString(obj.team);
//     writer.writeString(obj.company);
//     writer.writeString(obj.phone);
//     writer.writeString(obj.fax);
//     writer.writeString(obj.lastUpdate);
//     writer.writeString(obj.createdAt);
//   }
// }
