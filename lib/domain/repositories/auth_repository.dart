import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/auth_entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntities>> login(String email, String password);
}
