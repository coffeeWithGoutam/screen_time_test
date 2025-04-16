import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:screen_time_test/data/repositories/parent_home_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../application/blocs/auth/auth_bloc.dart';
import '../../application/blocs/login/login_bloc.dart';
import '../../application/blocs/parent_home/parent_home_bloc.dart';
import '../../application/cubits/permission/permission_cubit.dart';
import '../../data/datasources/remote/auth_remote_datasource.dart';
import '../../data/datasources/remote/parent_home_remote_datasource.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../data/services/api_service.dart';
import '../../data/datasources/local/auth_local_datasource.dart';
import '../../data/services/notification_service.dart';
import '../../data/services/permission_service.dart';
import '../../domain/repositories/parent_home_repository.dart';
import '../../domain/usecases/fetch_devices_usecases.dart';
import '../../domain/usecases/fetch_profile_usecases.dart';
import '../../domain/usecases/login_usecases.dart';
import '../../data/services/splash_service.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/auth_usecases.dart';
import '../../domain/usecases/logout_usecases.dart';
import '../../domain/usecases/request_permission_usecases.dart';
import '../../domain/usecases/toggle_child_device_lock_usecases.dart';
import '../../domain/usecases/user_role_usecases.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  // Singleton
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton<Dio>(() => Dio());
  sl.registerLazySingleton<ApiService>(() => ApiService(sl<Dio>()));
  final notificationService = NotificationService();
  await notificationService.initialize();
  sl.registerLazySingleton(() => notificationService);

  // Datasources
  sl.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(sharedPreferences: sl<SharedPreferences>()),
  );

  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiService: sl<ApiService>()),
  );

  sl.registerLazySingleton<ParentHomeRemoteDatasource>(
    () => ParentHomeRemoteDatasourceImpl(
      sl<ApiService>(),
      sl<AuthLocalDataSource>(),
    ),
  );

  // Repositories
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      localDataSource: sl<AuthLocalDataSource>(),
      remoteDataSource: sl<AuthRemoteDataSource>(),
      notificationService: sl<NotificationService>(),
    ),
  );
  sl.registerLazySingleton<ParentHomeRepository>(
    () => ParentHomeRepositoryImpl(sl<ParentHomeRemoteDatasource>()),
  );
  // Services
  sl.registerLazySingleton<SplashService>(
    () => SplashService(sl<AuthUseCase>()),
  );
  sl.registerLazySingleton<PermissionService>(() => PermissionService());

  // Usecases
  sl.registerLazySingleton<AuthUseCase>(
    () => AuthUseCase(sl<AuthLocalDataSource>()),
  );
  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(sl<AuthRepository>()),
  );

  sl.registerLazySingleton<RequestPermissionUsecases>(
    () => RequestPermissionUsecases(sl<PermissionService>()),
  );
  sl.registerLazySingleton<UserRoleUsecases>(
    () => UserRoleUsecases(sl<AuthLocalDataSource>()),
  );
  sl.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(sl<AuthLocalDataSource>()),
  );

  sl.registerLazySingleton<FetchDevicesUsecases>(
    () => FetchDevicesUsecases(sl<ParentHomeRepository>()),
  );

  sl.registerLazySingleton<FetchProfileUsecases>(
    () => FetchProfileUsecases(sl<ParentHomeRepository>()),
  );

  sl.registerLazySingleton<ToggleChildDeviceLockUsecases>(
    () => ToggleChildDeviceLockUsecases(sl<ParentHomeRepository>()),
  );

  sl.registerFactory<PermissionCubit>(
    () => PermissionCubit(permissionUsecases: sl<RequestPermissionUsecases>()),
  );

  sl.registerFactory<LoginBloc>(
    () => LoginBloc(loginUseCase: sl<LoginUseCase>()),
  );

  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      authUseCase: sl<AuthUseCase>(),
      getUserRoleUseCase: sl<UserRoleUsecases>(),
      logoutUseCase: sl<LogoutUseCase>(),
    ),
  );
  sl.registerFactory<ParentHomeBloc>(
    () => ParentHomeBloc(
      fetchDevicesUsecases: sl<FetchDevicesUsecases>(),
      authLocalDataSource: sl<AuthLocalDataSource>(),
      fetchProfileUsecases: sl<FetchProfileUsecases>(),
      toggleChildDeviceLockUsecases: sl<ToggleChildDeviceLockUsecases>(),
    ),
  );
}
