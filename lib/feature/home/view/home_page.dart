import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volcano_hybrid/feature/home/home.dart';
import 'package:volcano_hybrid/feature/settings/settings.dart';
import 'package:volcano_hybrid/feature/shared/bluetooth/bluetooth.dart';
import 'package:volcano_hybrid/feature/shared/navigation/navigation.dart';
import 'package:volcano_hybrid/feature/temperature/temperature.dart';
import 'package:volcano_hybrid/feature/volcano/volcano.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BluetoothBloc, BluetoothState>(
      buildWhen: (old, next) => old != next,
      builder: (context, state) {
        if (state is BluetoothConnected) {
          /*return BlocConsumer<NavigationBloc, NavigationState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Scaffold(
                extendBody: true,
                appBar: buildAppBar(),
                body: SafeArea(
                  child: IndexedStack(
                    index: state.tabIndex,
                    children: const [
                      TemperatureForm(),
                      VolcanoForm(),
                      SettingsForm(),
                    ],
                  ),
                ),
                bottomNavigationBar: const CustomBottomNavBar(),
              );
            },
          );*/
          return const ConnectPage();
        }
        return BlocConsumer<NavigationBloc, NavigationState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              extendBody: true,
              appBar: buildAppBar(),
              body: SafeArea(
                child: IndexedStack(
                  index: state.tabIndex,
                  children: const [
                    TemperatureForm(),
                    VolcanoForm(),
                    SettingsForm(),
                  ],
                ),
              ),
              bottomNavigationBar: const CustomBottomNavBar(),
            );
          },
        );
        /*return const ConnectPage();*/
      },
    );
  }
}
