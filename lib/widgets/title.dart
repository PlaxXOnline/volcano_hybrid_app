import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  final String titleText;
  const PageTitle({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text(
            titleText,
            style: const TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
