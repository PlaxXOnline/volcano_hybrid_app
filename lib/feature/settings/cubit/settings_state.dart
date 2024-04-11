part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  const SettingsState({
    this.isVibrationEnabled = true,
    this.isDisplayOnCooling = true,
    this.shutOffTime = 30,
    this.ledBrightness = 6,
  });

  final bool isVibrationEnabled;
  final bool isDisplayOnCooling;
  final double shutOffTime;
  final double ledBrightness;

  SettingsState copyWith({
    bool? isVibrationEnabled,
    bool? isDisplayOnCooling,
    double? shutOffTime,
    double? ledBrightness,
  }) {
    return SettingsState(
      isVibrationEnabled: isVibrationEnabled ?? this.isVibrationEnabled,
      isDisplayOnCooling: isDisplayOnCooling ?? this.isDisplayOnCooling,
      shutOffTime: shutOffTime ?? this.shutOffTime,
      ledBrightness: ledBrightness ?? this.ledBrightness,
    );
  }

  @override
  List<Object> get props =>
      [isVibrationEnabled, isDisplayOnCooling, shutOffTime, ledBrightness];
}

class SettingsInitial extends SettingsState {}
