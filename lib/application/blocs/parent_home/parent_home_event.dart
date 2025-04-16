part of 'parent_home_bloc.dart';

sealed class ParentHomeEvent extends Equatable {
  const ParentHomeEvent();

  @override
  List<Object?> get props => [];
}

class FetchDevicesEvent extends ParentHomeEvent {}

class SelectDeviceEvent extends ParentHomeEvent {
  final String selectedDevice;
  const SelectDeviceEvent(this.selectedDevice);

  @override
  List<Object?> get props => [selectedDevice];
}

class LoadPersistedDeviceEvent extends ParentHomeEvent {}

class FetchProfileEvent extends ParentHomeEvent {}

class ToggleChildLockEvent extends ParentHomeEvent {
  final String id;
  const ToggleChildLockEvent(this.id);

  @override
  List<Object?> get props => [id];
}

class ToggleSelectionEvent extends ParentHomeEvent {
  final bool isDaily;
  const ToggleSelectionEvent(this.isDaily);

  @override
  List<Object?> get props => [isDaily];
}

class SelectBonusTimeEvent extends ParentHomeEvent {
  final int hours;
  final int minutes;

  const SelectBonusTimeEvent({required this.hours, required this.minutes});

  @override
  List<Object?> get props => [hours, minutes];
}

class ToggleStartTimeEvent extends ParentHomeEvent {
  final bool isEnabled;

  const ToggleStartTimeEvent(this.isEnabled);

  @override
  List<Object?> get props => [isEnabled];
}

class ToggleEnableDaysEvent extends ParentHomeEvent {
  final bool isEnabled;

  const ToggleEnableDaysEvent(this.isEnabled);

  @override
  List<Object?> get props => [isEnabled];
}

class SelectWeekdayEvent extends ParentHomeEvent {
  final int index;

  const SelectWeekdayEvent(this.index);

  @override
  List<Object?> get props => [index];
}
