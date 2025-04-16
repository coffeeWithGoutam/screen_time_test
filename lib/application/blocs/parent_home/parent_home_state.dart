part of 'parent_home_bloc.dart';

class ParentHomeState extends Equatable {
  final String selectedDevice;
  final List<DeviceEntities> devices;
  final ProfileEntities? profile;
  final bool isDaily;
  final int selectedHour;
  final int selectedMinute;
  final bool isStartTimeEnabled;
  final bool isSelectDaysEnabled;
  final List<bool> selectedWeekdays;

  const ParentHomeState({
    required this.selectedDevice,
    required this.devices,
    required this.profile,
    this.isDaily = true,
    this.selectedHour = 0,
    this.selectedMinute = 0,
    this.isStartTimeEnabled = false,
    this.isSelectDaysEnabled = false,
    this.selectedWeekdays = const [
      false,
      false,
      false,
      false,
      false,
      false,
      false
    ],
  });

  ParentHomeState copyWith({
    String? selectedDevice,
    List<DeviceEntities>? devices,
    ProfileEntities? profile,
    bool? isDaily,
    int? selectedHour,
    int? selectedMinute,
    bool? isSelectDaysEnabled,
    bool? isStartTimeEnabled,
    List<bool>? selectedWeekdays,
  }) {
    return ParentHomeState(
      selectedDevice: selectedDevice ?? this.selectedDevice,
      devices: devices ?? this.devices,
      profile: profile ?? this.profile,
      isDaily: isDaily ?? this.isDaily,
      selectedHour: selectedHour ?? this.selectedHour,
      selectedMinute: selectedMinute ?? this.selectedMinute,
      isStartTimeEnabled: isStartTimeEnabled ?? this.isStartTimeEnabled,
      isSelectDaysEnabled: isSelectDaysEnabled ?? this.isSelectDaysEnabled,
      selectedWeekdays: selectedWeekdays ?? this.selectedWeekdays,
    );
  }

  @override
  List<Object?> get props => [
        selectedDevice,
        devices,
        profile,
        isDaily,
        selectedHour,
        selectedMinute,
        isStartTimeEnabled,
        isSelectDaysEnabled,
        selectedWeekdays
      ];
}
