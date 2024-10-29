import 'package:light_ship/features/data/models/setting/custom_setting_model.dart';
import 'package:light_ship/features/data/models/setting/key_setting_model.dart';
import 'package:light_ship/features/data/sources/setting/local/custom_setting_local_data_source.dart';
import 'package:light_ship/features/data/sources/setting/local/key_setting_local_data_source.dart';
import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/features/domain/repositories/setting/setting_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class SettingRepositoryImpl extends SettingRepository {
  final KeySettingLocalDataSource dataSourceLocalKey;
  final CustomSettingLocalDataSource dataSourceLocalCustom;

  SettingRepositoryImpl({
    required this.dataSourceLocalKey,
    required this.dataSourceLocalCustom,
  });

  @override
  Result<CustomSettingEntity> getCustom() {
    final Result<CustomSettingModel> result = dataSourceLocalCustom.get();

    return result.map((value) => value.toEntity());
  }

  @override
  Result<void> updateCustom(CustomSettingEntity data) {
    return dataSourceLocalCustom.update(CustomSettingModel.fromEntity(data));
  }

  @override
  Result<KeySettingEntity> getKey() {
    final Result<KeySettingModel> result = dataSourceLocalKey.get();

    return result.map((value) => value.toEntity());
  }

  @override
  Result<void> updateKey(KeySettingEntity data) {
    return dataSourceLocalKey.update(KeySettingModel.fromEntity(data));
  }
}
