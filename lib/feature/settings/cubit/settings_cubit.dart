import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());

  void toggleVibration(bool value) {
    emit(state.copyWith(isVibrationEnabled: value));
  }

  void toggleDisplayOnCooling(bool value) {
    emit(state.copyWith(isDisplayOnCooling: value));
  }

  void setLedBrightness(double value) {
    emit(state.copyWith(ledBrightness: value));
  }

  void setShutOffTime(double value) {
    emit(state.copyWith(shutOffTime: value));
  }
}
