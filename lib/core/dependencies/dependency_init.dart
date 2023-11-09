import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_init.config.dart';



final getIt = GetIt.instance;
@injectableInit
Future<void> configureDependencies() async {
  await $initGetIt(getIt);
}
// flutter packages pub run build_runner build
// flutter packages pub run build_runner watch
//flutter pub run build_runner build --delete-conflicting-outputs
//flutter packages pub run build_runner watch — delete-conflicting-outputs