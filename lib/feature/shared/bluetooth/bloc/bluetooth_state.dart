part of 'bluetooth_bloc.dart';

abstract class BluetoothState extends Equatable {
  @override
  List<Object> get props => [];
}

class BluetoothInitial extends BluetoothState {}

class BluetoothScanning extends BluetoothState {}

class BluetoothScanResults extends BluetoothState {
  final List<ScanResult> results;

  BluetoothScanResults(this.results);

  @override
  List<Object> get props => [results];
}

class BluetoothConnected extends BluetoothState {
  final BluetoothDevice device;

  BluetoothConnected(this.device);

  @override
  List<Object> get props => [device];
}

class BluetoothDisconnected extends BluetoothState {}
