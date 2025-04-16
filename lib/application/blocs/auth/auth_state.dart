part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

final class AuthInitial extends AuthState {}

class Authenticated extends AuthState {
  final String role;

  const Authenticated(this.role);
}

class Unauthenticated extends AuthState {}
