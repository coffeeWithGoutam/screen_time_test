import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/usecases/auth_usecases.dart';
import '../../../domain/usecases/logout_usecases.dart';
import '../../../domain/usecases/user_role_usecases.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCase authUseCase;
  final UserRoleUsecases getUserRoleUseCase;
  final LogoutUseCase logoutUseCase;

  AuthBloc({
    required this.authUseCase,
    required this.getUserRoleUseCase,
    required this.logoutUseCase,
  }) : super(AuthInitial()) {
    on<CheckLoggedInEvent>((event, emit) async {
      final isLoggedInResult = await authUseCase.isAuthenticated();
      final isLoggedIn = isLoggedInResult.fold(
        (failure) => false,
        (success) => success,
      );
      if (isLoggedIn) {
        final roleResult = await getUserRoleUseCase.call();
        final tokenResult = await authUseCase.getAccessToken();
        tokenResult.fold(
          (failure) {
            emit(Unauthenticated());
          },
          (token) {
            // socketService.initializeSocket(token);
          },
        );
        roleResult.fold(
          (failure) => emit(Unauthenticated()),
          (role) => emit(Authenticated(role)),
        );
      } else {
        emit(Unauthenticated());
      }
    });

    on<LogoutEvent>((event, emit) async {
      final logoutResult = await logoutUseCase.call();
      logoutResult.fold((failure) => emit(AuthInitial()), (_) {
        // socketService.socket.disconnect();
        emit(Unauthenticated());
      });
    });
  }
}
