part of 'permission_cubit.dart';

sealed class PermissionState extends Equatable {
  const PermissionState();

  @override
  List<Object> get props => [];
}

final class PermissionInitial extends PermissionState {}

class PermissionGranted extends PermissionState {}

class PermissionDenied extends PermissionState {
  final String message;

  const PermissionDenied({required this.message});

  @override
  List<Object> get props => [message];
}
