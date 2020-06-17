import 'package:flutterawesome/data/network/network.dart';
import 'package:flutterawesome/data/repository/repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Network());
  locator.registerLazySingleton(() => HomeRepository(locator<Network>()));
}
