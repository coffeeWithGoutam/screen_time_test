import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../data/datasources/local/auth_local_datasource.dart';

class UserRoleUsecases {
  final AuthLocalDataSource localDataSource;

  UserRoleUsecases(this.localDataSource);

  Future<Either<Failure, String>> call() async {
    try {
      final role = await localDataSource.getUserRole();
      if (role != null) {
        return right(role);
      } else {
        return left(Failure('Role not found'));
      }
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
