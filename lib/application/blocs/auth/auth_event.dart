part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class CheckLoggedInEvent extends AuthEvent {}

class LogoutEvent extends AuthEvent {}

class LoadUserRoleEvent extends AuthEvent {}
