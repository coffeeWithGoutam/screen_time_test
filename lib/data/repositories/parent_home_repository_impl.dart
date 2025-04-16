import 'package:dartz/dartz.dart';
import 'package:screen_time_test/data/mappers/device_mapper.dart';
import 'package:screen_time_test/data/mappers/profile_mapper.dart';

import '../../core/errors/failure.dart';
import '../../domain/entities/device_entities.dart';
import '../../domain/entities/profile_entities.dart';
import '../../domain/repositories/parent_home_repository.dart';
import '../datasources/remote/parent_home_remote_datasource.dart';

class ParentHomeRepositoryImpl implements ParentHomeRepository {
  final ParentHomeRemoteDatasource _parentHomeRemoteDatasource;

  const ParentHomeRepositoryImpl(this._parentHomeRemoteDatasource);

  @override
  Future<Either<Failure, List<DeviceEntities>>> fetchDevices() async {
    try {
      final response = await _parentHomeRemoteDatasource.getDevices();
      final deviceEntity = response.map((device) => device.toEntity()).toList();
      return right(deviceEntity);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, ProfileEntities>> fetchProfile() async {
    try {
      final response = await _parentHomeRemoteDatasource.getChildProfile();
      final profileEntity = response.data!.toEntity();
      return right(profileEntity);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> toggleChildLock(String id) async {
    try {
      final response = await _parentHomeRemoteDatasource.toggleChildDeviceLock(
        id,
      );
      return right(response.message!);
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
