import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volcano_hybrid/constants/assets.dart';
import 'package:volcano_hybrid/feature/settings/settings.dart';
import 'package:volcano_hybrid/feature/shared/navigation/navigation.dart';
import 'package:volcano_hybrid/feature/temperature/temperature.dart';
import 'package:volcano_hybrid/feature/volcano/volcano.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavigationBloc, NavigationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          appBar: AppBar(
            title: SvgPicture.asset(Assets.logoV,
                semanticsLabel: 'The Volcano Logo'),
            backgroundColor: Colors.deepOrange,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.info_outline_rounded),
                onPressed: () {},
              )
            ],
          ),
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
  }
}
