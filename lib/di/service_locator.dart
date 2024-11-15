import 'package:get_it/get_it.dart';

import '../view_models/fractionally_sized_box_viewmodel.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<FractionallySizedBoxViewModel>(() => FractionallySizedBoxViewModel());
}
