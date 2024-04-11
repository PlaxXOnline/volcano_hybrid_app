import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volcano_hybrid/feature/home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:volcano_hybrid/feature/shared/bluetooth/bluetooth.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLocalizations locale = AppLocalizations.of(context)!;
    return BlocConsumer<BluetoothBloc, BluetoothState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          appBar: buildAppBar(),
          body: SafeArea(
            child: Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  locale.connect,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
