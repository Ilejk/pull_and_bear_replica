// ignore: import_of_legacy_library_into_null_safe
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pull_and_bear_replica/src/app/app_preferences.dart';
import 'package:pull_and_bear_replica/src/data/data_source/local_data_source.dart';
import 'package:pull_and_bear_replica/src/data/data_source/remote_data_source.dart';
import 'package:pull_and_bear_replica/src/data/network/app_api.dart';
import 'package:pull_and_bear_replica/src/data/network/dio_factory.dart';
import 'package:pull_and_bear_replica/src/data/network/network_info.dart';
import 'package:pull_and_bear_replica/src/data/repository/repository_implementer.dart';
import 'package:pull_and_bear_replica/src/domain/repository/repository.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/home_use_case.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/login_use_case.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/menu_new_cat_use_case.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/menu_use_case.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/register_use_case.dart';
import 'package:pull_and_bear_replica/src/presentation/login/login_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/main/home/home_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/menu/menu_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/menu_cat_view_models/new_menu/new_menu_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/register/register_view_model.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
  instance.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImplementer(DataConnectionChecker()));
  instance.registerLazySingleton<DioFactory>(() => DioFactory());
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
  instance.registerLazySingleton<RemoteDataSource>(
      () => RemoteDataSourceClassImplementer(instance()));
  instance.registerLazySingleton<LocalDataSource>(
      () => LocalDataSourceImplementer());
  instance.registerLazySingleton<Repository>(
      () => RepositoryImplementer(instance(), instance(), instance()));
}

initHomeModule() {
  if (!GetIt.I.isRegistered<HomeUseCase>()) {
    instance.registerFactory<HomeUseCase>(() => HomeUseCase(instance()));
    instance.registerFactory<HomeViewModel>(() => HomeViewModel(instance()));
    instance.registerFactory<ImagePicker>(() => ImagePicker());
  }
}

initLoginModule() {
  if (!GetIt.I.isRegistered<LoginUseCase>()) {
    instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
    instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
  }
}

initRegisterdModule() {
  if (!GetIt.I.isRegistered<RegisterUseCase>()) {
    instance
        .registerFactory<RegisterUseCase>(() => RegisterUseCase(instance()));
    instance.registerFactory<RegisterViewModel>(
        () => RegisterViewModel(instance()));
  }
}

initMenuModule() {
  if (!GetIt.I.isRegistered<MenuUseCase>()) {
    instance.registerFactory<MenuUseCase>(() => MenuUseCase(instance()));
    instance.registerFactory<MenuViewModel>(() => MenuViewModel(instance()));
  }
}

initNewCatMenuModule() {
  if (!GetIt.I.isRegistered<MenuNewCatUseCase>()) {
    instance.registerFactory<MenuNewCatUseCase>(
        () => MenuNewCatUseCase(instance()));
    instance
        .registerFactory<NewMenuViewModel>(() => NewMenuViewModel(instance()));
  }
}
