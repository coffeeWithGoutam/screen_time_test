import 'package:dartz/dartz.dart';
import 'package:screen_time_test/data/mappers/auth_mapper.dart';

import '../../core/errors/failure.dart';
import '../../domain/entities/auth_entities.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/local/auth_local_datasource.dart';
import '../datasources/remote/auth_remote_datasource.dart';
import '../services/device_info_service.dart';
import '../services/notification_service.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NotificationService notificationService;
  AuthRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.notificationService,
  });

  @override
  Future<Either<Failure, AuthEntities>> login(
    String email,
    String password,
  ) async {
    try {
      final deviceInfoService = DeviceInfoService();
      final deviceName = await deviceInfoService.getDeviceName();
      // Get the FCM token from NotificationService
      String? fcmToken = await notificationService.getFCMToken();
      final response = await remoteDataSource.login(
        email,
        password,
        deviceName,
        fcmToken,
      );

      // Save token and user role in local storage
      final token = response.data!.accessToken ?? '';
      await localDataSource.storeToken(
        token,
        response.data!.refreshToken ?? "",
      );
      await localDataSource.storeUserData(
        response.data!.userId ?? "",
        response.data!.userType ?? "",
      );
      final authEntity = response.toEntity();
      return right(authEntity);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
