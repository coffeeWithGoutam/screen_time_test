import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_time_test/core/utils/responsive.dart';

import '../../../../application/blocs/parent_home/parent_home_bloc.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../common/home/widgets/custom_row.dart';
import '../../../common/home/widgets/custom_icon_button.dart';

class CustomHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> homeKey;
  const CustomHeader({super.key, required this.homeKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        BlocBuilder<ParentHomeBloc, ParentHomeState>(
          builder: (context, state) {
            if (state.profile == null) {
              return SizedBox();
            }
            final profile = state.profile!;
            return CustomRow(
              children: [
                Container(
                  height: context.setRh(0.05),
                  width: context.setRw(0.1),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: AppColors.white),
                  ),
                  child: ClipOval(
                    child:
                        profile.avatar.isNotEmpty
                            ? Image.network(profile.avatar, fit: BoxFit.cover)
                            : Icon(
                              Icons.person,
                              color: AppColors.white,
                              size: 40,
                            ),
                  ),
                ),
                SizedBox(width: context.setRw(0.015)),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(profile.fullName, style: AppStyles.kAppBarTextStyle),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (profile.isOnline)
                          CustomRow(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.primaryGreen,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "Online",
                                style: AppStyles.kAppBarTextStyle,
                              ),
                            ],
                          )
                        else
                          const Text(
                            "Offline",
                            style: AppStyles.kAppBarTextStyle,
                          ),
                      ],
                    ),
                  ],
                ),
              ],
            );
          },
        ),
        CustomIconButton(
          icon: Icons.more_vert,
          onPressed: () {
            homeKey.currentState!.openDrawer();
          },
        ),
      ],
    );
  }
}
