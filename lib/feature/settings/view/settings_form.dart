import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:volcano_hybrid/constants/theme.dart';
import 'package:volcano_hybrid/feature/settings/settings.dart';
import 'package:volcano_hybrid/feature/shared/bluetooth/bloc/bluetooth_bloc.dart';
import 'package:volcano_hybrid/feature/shared/bluetooth/bluetooth.dart';

class SettingsForm extends StatelessWidget {
  const SettingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;
    final Size size = MediaQuery.sizeOf(context);
    return BlocBuilder<SettingsCubit, SettingsState>(
      buildWhen: (old, next) => old != next,
      builder: (context, state) {
        return Wrap(
          children: [
            buildSettingsList(context, state, locale),
          ],
        );
      },
    );
  }
}

Widget buildSettingsList(
    BuildContext context, SettingsState state, AppLocalizations locale) {
  final Size size = MediaQuery.sizeOf(context);

  return BlocBuilder<SettingsCubit, SettingsState>(
    buildWhen: (old, next) => old != next,
    builder: (builderContext, state) {
      return SizedBox(
        height: size.height * 0.8,
        child: SettingsList(
          contentPadding:
              const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
          lightTheme: AppTheme.settingsLightTheme,
          darkTheme: AppTheme.settingsDarkTheme,
          brightness: Brightness.light,
          applicationType: ApplicationType.both,
          //shrinkWrap: true,
          sections: [
            SettingsSection(
              title: Text(
                locale.general,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(locale.vibration),
                  initialValue: state.isVibrationEnabled,
                  onToggle: (bool value) =>
                      context.read<SettingsCubit>().toggleVibration(value),
                  activeSwitchColor: Theme.of(context).primaryColor,
                )
              ],
            ),
            SettingsSection(
              title: Text(
                locale.display,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              tiles: [
                SettingsTile.switchTile(
                  title: Text(locale.displayOnCooling),
                  initialValue: state.isDisplayOnCooling,
                  onToggle: (bool value) => context
                      .read<SettingsCubit>()
                      .toggleDisplayOnCooling(value),
                  activeSwitchColor: Theme.of(context).primaryColor,
                ),
                SettingsTile(
                  title: Text(locale.ledBrightness),
                  value: Text('${state.ledBrightness.toInt()}'),
                  description: Slider(
                    value: state.ledBrightness,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: state.ledBrightness.round().toString(),
                    onChanged: (double value) =>
                        context.read<SettingsCubit>().setLedBrightness(value),
                  ),
                ),
              ],
            ),
            SettingsSection(
              title: Text(
                locale.controls,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              tiles: [
                SettingsTile(
                  title: Text(locale.automaticShutOff),
                  value: Text('${state.shutOffTime.toInt()} min'),
                  description: Slider(
                    value: state.shutOffTime,
                    min: 30,
                    max: 360,
                    divisions: 12,
                    label: state.shutOffTime.round().toString(),
                    onChanged: (double value) =>
                        context.read<SettingsCubit>().setShutOffTime(value),
                  ),
                ),
              ],
            ),
            SettingsSection(
              title: Text(
                locale.bluetooth,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              tiles: [
                SettingsTile(
                  title: Text(
                    locale.disconnect,
                    style: const TextStyle(color: Colors.red),
                  ),
                  leading: const Icon(
                    Icons.bluetooth,
                    color: Colors.red,
                  ),
                  onPressed: (context) {
                    context.read<BluetoothBloc>().add(DisconnectDevice());
                  },
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
