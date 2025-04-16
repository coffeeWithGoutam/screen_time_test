import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:screen_time_test/presentation/parent/parent_home/widgets/custom_parent_app_bar.dart';

import '../../../application/blocs/parent_home/parent_home_bloc.dart';
import '../../../core/utils/service_locator.dart';
import '../../common/home/widgets/custom_drawer.dart';

class ParentHomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final double progress = 0.5;

  ParentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ParentHomeBloc(
            fetchDevicesUsecases: sl(),
            authLocalDataSource: sl(),
            fetchProfileUsecases: sl(),
            toggleChildDeviceLockUsecases: sl(),
          )..add(FetchDevicesEvent()),
      child: Scaffold(
        key: _scaffoldKey,
        drawer: const CustomDrawer(),
        body: CustomScrollView(
          slivers: [CustomParentAppBar(scaffoldKey: _scaffoldKey)],
        ),
      ),
    );
  }
}
