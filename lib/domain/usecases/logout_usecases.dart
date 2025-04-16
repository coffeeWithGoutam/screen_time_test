import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../data/datasources/local/auth_local_datasource.dart';

class LogoutUseCase {
  final AuthLocalDataSource localDataSource;

  LogoutUseCase(this.localDataSource);

  Future<Either<Failure, void>> call() async {
    try {
      await localDataSource.clearData();
      return right(null);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
