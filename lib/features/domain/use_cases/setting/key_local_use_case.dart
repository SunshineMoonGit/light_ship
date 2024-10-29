import 'package:light_ship/features/domain/entities/setting/key_setting_entity.dart';
import 'package:light_ship/features/domain/repositories/setting/setting_repository.dart';
import 'package:light_ship/shared/services/result/result.dart';

class KeySettingLocalUseCase {
  final SettingRepository repository;

  KeySettingLocalUseCase({required this.repository});

  Result<KeySettingEntity> get() {
    return repository.getKey();
  }

  Result<void> update(KeySettingEntity data) {
    return repository.updateKey(data);
  }
}
