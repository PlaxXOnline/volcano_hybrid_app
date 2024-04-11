import 'package:flutter/material.dart';

class SettingsForm extends StatelessWidget {
  const SettingsForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: const Text(
        'Settings Form',
        textAlign: TextAlign.center,
      ),
    );
  }
}
