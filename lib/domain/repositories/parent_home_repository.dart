import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/device_entities.dart';
import '../entities/profile_entities.dart';

abstract class ParentHomeRepository {
  Future<Either<Failure, List<DeviceEntities>>> fetchDevices();
  Future<Either<Failure, ProfileEntities>> fetchProfile();
  Future<Either<Failure, String>> toggleChildLock(String id);
}
