import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volcano_hybrid/constants/assets.dart';
import 'package:volcano_hybrid/feature/shared/navigation/navigation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
  });
  //TODO: Farben in korrekte Condition setzen
  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;
    final Color primary = Theme.of(context).primaryColor;
    return BlocBuilder<NavigationBloc, NavigationState>(
      buildWhen: (old, next) => old != next,
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          useLegacyColorScheme: false,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(Assets.tabVolcano_0,
                  colorFilter: ColorFilter.mode(
                      state.tabIndex == 0 ? primary : Colors.grey,
                      BlendMode.srcIn),
                  semanticsLabel: 'A Volcano for Information'),
              label: locale.volcano,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cable_rounded,
                  color: state.tabIndex == 1 ? primary : Colors.grey),
              label: locale.workflow,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                  color: state.tabIndex == 2 ? primary : Colors.grey),
              label: locale.settings,
            ),
          ],
          currentIndex: state.tabIndex,
          //selectedItemColor: Theme.of(context).colorScheme.primary,
          //unselectedItemColor: Colors.grey,
          onTap: (index) {
            BlocProvider.of<NavigationBloc>(context)
                .add(TabChange(tabIndex: index));
          },
        );
      },
    );
  }
}
