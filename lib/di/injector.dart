import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:light_ship/config/app/const/app_path.dart';
import 'package:light_ship/features/data/repositorties/auth/auth_repository_impl.dart';
import 'package:light_ship/features/data/repositorties/setting/setting_repository_impl.dart';
import 'package:light_ship/features/data/repositorties/wallet/wallet_repository_impl.dart';
import 'package:light_ship/features/data/sources/auth/local/auth_local_data_source.dart';
import 'package:light_ship/features/data/sources/auth/local/auth_local_data_source_impl.dart';
import 'package:light_ship/features/data/sources/auth/network/auth_network_data_source.dart';
import 'package:light_ship/features/data/sources/auth/network/auth_network_data_source_impl.dart';
import 'package:light_ship/features/data/sources/setting/local/custom_setting_local_data_source.dart';
import 'package:light_ship/features/data/sources/setting/local/custom_setting_local_data_source_impl.dart';
import 'package:light_ship/features/data/sources/setting/local/key_setting_local_data_source.dart';
import 'package:light_ship/features/data/sources/setting/local/key_setting_local_data_source_impl.dart';
import 'package:light_ship/features/data/sources/wallet/local/wallet_local_data_source.dart';
import 'package:light_ship/features/data/sources/wallet/local/wallet_local_data_source_impl.dart';
import 'package:light_ship/features/data/sources/wallet/network/wallet_network_data_source.dart';
import 'package:light_ship/features/data/sources/wallet/network/wallet_network_data_source_impl.dart';
import 'package:light_ship/features/domain/repositories/auth/auth_repository.dart';
import 'package:light_ship/features/domain/repositories/setting/setting_repository.dart';
import 'package:light_ship/features/domain/repositories/wallet/wallet_repository.dart';
import 'package:light_ship/features/domain/use_cases/auth/auth_local_use_case.dart';
import 'package:light_ship/features/domain/use_cases/auth/auth_network_use_case.dart';
import 'package:light_ship/features/domain/use_cases/setting/custom_local_use_case.dart';
import 'package:light_ship/features/domain/use_cases/setting/key_local_use_case.dart';
import 'package:light_ship/features/domain/use_cases/wallet/wallet_local_use_case.dart';
import 'package:light_ship/features/domain/use_cases/wallet/wallet_network_use_case.dart';
import 'package:light_ship/shared/services/storage/storage_service.dart';

//@ DataSources
final walletLocalDataSourceProvider = Provider<WalletLocalDataSource>((ref) => WalletLocalDataSourceImpl(
      ref.watch(storageServiceProvider),
    ));
final walletNetworkDataSourceProvider = Provider<WalletNetworkDataSource>((ref) => WalletNetworkDataSourceImpl());

final authLocalDataSourceProvider = Provider<AuthLocalDataSource>((ref) => AuthLocalDataSourceImpl(
      ref.watch(storageServiceProvider),
    ));
final authNetworkDataSourceProvider = Provider<AuthNetworkDataSource>((ref) => AuthNetworkDataSourceImpl());

final keySettingLocalDataSourceProvider =
    Provider<KeySettingLocalDataSource>((ref) => KeySettingLocalDataSourceImpl(ref.watch(storageServiceProvider).key));
final customSettingLocalDataSourceProvider = Provider<CustomSettingLocalDataSource>(
    (ref) => CustomSettingLocalDataSourceImpl(ref.watch(storageServiceProvider).custom));

//@ Repositories
final walletRepositoryProvider = Provider<WalletRepository>((ref) => WalletRepositoryImpl(
      dataSourceLocal: ref.watch(walletLocalDataSourceProvider),
      dataSourceNetwork: ref.watch(walletNetworkDataSourceProvider),
    ));

final authRepositoryProvider = Provider<AuthRepository>((ref) => AuthRepositoryImpl(
      dataSourceLocal: ref.watch(authLocalDataSourceProvider),
      dataSourceNetwork: ref.watch(authNetworkDataSourceProvider),
    ));

final settingRepositoryProvider = Provider<SettingRepository>((ref) => SettingRepositoryImpl(
      dataSourceLocalKey: ref.watch(keySettingLocalDataSourceProvider),
      dataSourceLocalCustom: ref.watch(customSettingLocalDataSourceProvider),
    ));

//@ UseCases
final walletNetworkUseCaseProvider = Provider<WalletNetworkUseCase>((ref) => WalletNetworkUseCase(
      repository: ref.watch(walletRepositoryProvider),
    ));

final walletLocalUseCaseProvider = Provider<WalletLocalUseCase>((ref) => WalletLocalUseCase(
      repository: ref.watch(walletRepositoryProvider),
    ));

final authNetworkUseCaseProvider = Provider<AuthNetworkUseCase>((ref) => AuthNetworkUseCase(
      repository: ref.watch(authRepositoryProvider),
    ));

final authLocalUseCaseProvider = Provider<AuthLocalUseCase>((ref) => AuthLocalUseCase(
      repository: ref.watch(authRepositoryProvider),
    ));

final customSettingLocalUseCaseProvider = Provider<CustomSettingLocalUseCase>(
    (ref) => CustomSettingLocalUseCase(repository: ref.watch(settingRepositoryProvider)));

final keySettingLocalUseCaseProvider =
    Provider<KeySettingLocalUseCase>((ref) => KeySettingLocalUseCase(repository: ref.watch(settingRepositoryProvider)));

//@ LocalStorageService Provider
final storageServiceProvider = Provider<HiveStorageService>((ref) {
  return HiveStorageService(
      authBox: Hive.box(AppPath.storageAuth),
      customSettingBox: Hive.box(AppPath.storageCustom),
      keySettingBox: Hive.box(AppPath.storageKey),
      walletBox: Hive.box(AppPath.storageFollowings));
});
