part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final bool isPasswordVisible;
  final bool isLoading;
  final Option<Either<Failure, AuthEntities>> loginResult;

  const LoginState({
    this.email = "",
    this.password = "",
    this.isPasswordVisible = false,
    this.isLoading = false,
    this.loginResult = const None(),
  });

  LoginState copyWith({
    String? email,
    String? password,
    bool? isPasswordVisible,
    bool? isLoading,
    Option<Either<Failure, AuthEntities>>? loginResult,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      isLoading: isLoading ?? this.isLoading,
      loginResult: loginResult ?? this.loginResult,
    );
  }

  @override
  List<Object?> get props => [
    email,
    password,
    isPasswordVisible,
    isLoading,
    loginResult,
  ];
}
