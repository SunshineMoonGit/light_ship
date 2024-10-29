import 'package:light_ship/features/domain/entities/setting/custom_setting_entity.dart';
import 'package:light_ship/features/domain/repositories/setting/setting_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class CustomSettingLocalUseCase {
  final SettingRepository repository;

  CustomSettingLocalUseCase({required this.repository});

  Result<CustomSettingEntity> get() {
    return repository.getCustom();
  }

  Result<void> update(CustomSettingEntity data) {
    return repository.updateCustom(data);
  }
}
