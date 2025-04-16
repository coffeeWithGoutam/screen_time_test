import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/datasources/local/auth_local_datasource.dart';
import '../../../domain/entities/device_entities.dart';
import '../../../domain/entities/profile_entities.dart';
import '../../../domain/usecases/fetch_devices_usecases.dart';
import '../../../domain/usecases/fetch_profile_usecases.dart';
import '../../../domain/usecases/toggle_child_device_lock_usecases.dart';

part 'parent_home_event.dart';
part 'parent_home_state.dart';

class ParentHomeBloc extends Bloc<ParentHomeEvent, ParentHomeState> {
  final FetchDevicesUsecases fetchDevicesUsecases;
  final AuthLocalDataSource authLocalDataSource;
  final FetchProfileUsecases fetchProfileUsecases;
  final ToggleChildDeviceLockUsecases toggleChildDeviceLockUsecases;

  ParentHomeBloc({
    required this.fetchDevicesUsecases,
    required this.authLocalDataSource,
    required this.fetchProfileUsecases,
    required this.toggleChildDeviceLockUsecases,
  }) : super(ParentHomeState(
          selectedDevice: "",
          devices: [],
          profile: null,
        )) {
    on<LoadPersistedDeviceEvent>((event, emit) async {
      final savedDeviceId = await authLocalDataSource.getChildId();
      if (savedDeviceId != null) {
        emit(state.copyWith(selectedDevice: savedDeviceId));
        add(FetchProfileEvent());
      }
    });

    on<FetchDevicesEvent>((event, emit) async {
      final result = await fetchDevicesUsecases.fetchDevices();
      result.fold(
        (failure) {},
        (devices) {
          emit(state.copyWith(devices: devices));
          add(LoadPersistedDeviceEvent());
        },
      );
    });
    on<SelectDeviceEvent>((event, emit) async {
      await authLocalDataSource.storeChildId(event.selectedDevice);
      emit(state.copyWith(selectedDevice: event.selectedDevice));
      add(FetchProfileEvent());
    });
    on<FetchProfileEvent>((event, emit) async {
      final result = await fetchProfileUsecases.fetchProfile();
      result.fold((failure) {}, (profile) {
        emit(state.copyWith(profile: profile));
      });
    });
    on<ToggleSelectionEvent>((event, emit) {
      emit(state.copyWith(isDaily: event.isDaily));
    });
    on<SelectBonusTimeEvent>((event, emit) {
      emit(state.copyWith(
          selectedHour: event.hours, selectedMinute: event.minutes));
    });
    on<ToggleStartTimeEvent>((event, emit) {
      emit(state.copyWith(isStartTimeEnabled: event.isEnabled));
    });
    on<ToggleEnableDaysEvent>((event, emit) {
      emit(state.copyWith(isSelectDaysEnabled: event.isEnabled));
    });

    on<SelectWeekdayEvent>((event, emit) {
      List<bool> updatedWeekdays = List.from(state.selectedWeekdays);
      updatedWeekdays[event.index] = !updatedWeekdays[event.index];
      emit(state.copyWith(selectedWeekdays: updatedWeekdays));
    });

    on<ToggleChildLockEvent>((event, emit) async {
      final result =
          await toggleChildDeviceLockUsecases.lockChildDevice(event.id);
      result.fold(
        (failure) {},
        (success) {
          add(LoadPersistedDeviceEvent());
        },
      );
    });
  }
}
