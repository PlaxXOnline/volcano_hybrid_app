import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volcano_hybrid/constants/assets.dart';

AppBar buildAppBar() {
  return AppBar(
    title: SvgPicture.asset(Assets.logoV, semanticsLabel: 'The Volcano Logo'),
    backgroundColor: Colors.deepOrange,
    actions: [
      IconButton(
        icon: const Icon(Icons.info_outline_rounded),
        onPressed: () {},
      )
    ],
  );
}
