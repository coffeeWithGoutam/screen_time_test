import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../../../application/blocs/parent_home/parent_home_bloc.dart';
import '../../../../core/constants/colors.dart';

class ChildrenDropdown extends StatelessWidget {
  const ChildrenDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ParentHomeBloc, ParentHomeState>(
      builder: (context, state) {
        return DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            alignment: AlignmentDirectional.center,
            isExpanded: true,
            hint: Row(
              children: [
                Icon(Icons.android, color: Colors.white, size: 25),
                const SizedBox(width: 8),
                Text(
                  "Select a device",
                  style: TextStyle(fontSize: 13, color: Colors.white),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: true,
                ),
              ],
            ),
            value: state.selectedDevice.isEmpty ? null : state.selectedDevice,
            items:
                state.devices
                    .map(
                      (entry) => DropdownMenuItem<String>(
                        value: entry.id,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              spacing: 8,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone_android,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                Text(
                                  entry.deviceName.isEmpty
                                      ? "Unknown Device"
                                      : entry.deviceName,
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () {
                                context.read<ParentHomeBloc>().add(
                                  ToggleChildLockEvent(entry.id),
                                );
                              },
                              child: Icon(
                                entry.phoneLock
                                    ? Icons.lock_outline
                                    : Icons.lock_open,
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
            onChanged: (val) {
              context.read<ParentHomeBloc>().add(SelectDeviceEvent(val!));
            },
            buttonStyleData: ButtonStyleData(
              height: 55,
              width: context.setRw(0.62),
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColors.primaryLightBlue,
              ),
            ),
            iconStyleData: const IconStyleData(
              icon: Icon(Icons.arrow_drop_down, color: Colors.white),
            ),
            dropdownStyleData: DropdownStyleData(
              elevation: 0,
              maxHeight: context.setRh(0.3),
              width: context.setRw(0.62),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.primaryLightBlue,
              ),
              offset: const Offset(0, -6),
            ),
          ),
        );
      },
    );
  }
}
