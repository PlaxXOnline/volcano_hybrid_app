import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:volcano_hybrid/bloc_observer.dart';
import 'package:volcano_hybrid/constants/theme.dart';
import 'package:volcano_hybrid/feature/home/home.dart';
import 'package:volcano_hybrid/feature/settings/cubit/settings_cubit.dart';
import 'package:volcano_hybrid/feature/shared/bluetooth/bluetooth.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:volcano_hybrid/feature/shared/navigation/navigation.dart';
import 'package:volcano_hybrid/feature/shared/permission/permission.dart';
import 'package:volcano_hybrid/feature/temperature/bloc/temperature_bloc.dart';
import 'package:volcano_hybrid/feature/volcano/bloc/volcano_bloc.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterBluePlus.setLogLevel(LogLevel.verbose, color: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => HomeBloc(),
        ),
        BlocProvider<BluetoothBloc>(
          create: (_) => BluetoothBloc(),
        ),
        BlocProvider<PermissionBloc>(
          create: (_) => PermissionBloc(),
        ),
        BlocProvider<NavigationBloc>(
          create: (_) => NavigationBloc(),
        ),
        BlocProvider<VolcanoBloc>(
          create: (_) => VolcanoBloc(),
        ),
        BlocProvider<TemperatureBloc>(
          create: (_) => TemperatureBloc(),
        ),
        BlocProvider<SettingsCubit>(
          create: (_) => SettingsCubit(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        title: 'Volcano Hybrid',
        theme: AppTheme.lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
