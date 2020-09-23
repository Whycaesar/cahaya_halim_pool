import 'package:get_it/get_it.dart';
import 'package:cahaya_halim_pool/services/api.dart';
import 'package:cahaya_halim_pool/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => Api());
}
