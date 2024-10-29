// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:light_ship/features/data/models/user_info/my_user_info_model.dart';
// import 'package:light_ship/features/data/models/user_info/public_user_info_model.dart';
// import 'package:light_ship/features/data/models/user_info/private_user_info_model.dart';

// class MyUserInfoModelAdapter extends TypeAdapter<MyUserInfoModel> {
//   @override
//   final int typeId = 2;

//   @override
//   MyUserInfoModel read(BinaryReader reader) {
//     return MyUserInfoModel(
//       publicInfo: reader.read() as PublicUserInfoModel,
//       privateInfo: reader.read() as PrivateUserInfoModel,
//     );
//   }

//   @override
//   void write(BinaryWriter writer, MyUserInfoModel obj) {
//     writer.write(obj.publicInfo);
//     writer.write(obj.privateInfo);
//   }
// }
