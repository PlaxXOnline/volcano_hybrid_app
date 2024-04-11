part of 'bluetooth_bloc.dart';

abstract class BluetoothEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class BluetoothStarted extends BluetoothEvent {}

class StartScanning extends BluetoothEvent {}

class ConnectToDevice extends BluetoothEvent {
  final BluetoothDevice device;

  ConnectToDevice(this.device);

  @override
  List<Object> get props => [device];
}

class DisconnectDevice extends BluetoothEvent {}
