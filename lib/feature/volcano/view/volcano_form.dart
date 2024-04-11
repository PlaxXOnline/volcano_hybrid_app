import 'package:flutter/material.dart';

class VolcanoForm extends StatelessWidget {
  const VolcanoForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: const Text(
        'Volcano Form',
        textAlign: TextAlign.center,
      ),
    );
  }
}
