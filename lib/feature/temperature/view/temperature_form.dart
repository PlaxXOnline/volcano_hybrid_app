import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volcano_hybrid/constants/assets.dart';

class TemperatureForm extends StatelessWidget {
  const TemperatureForm({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Image.asset(Assets.imgV),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '0 °C',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(Assets.minus_v_0,
                        semanticsLabel: 'A Volcano Hybrid Logo'),
                    const Text(
                      '194 °C',
                      style: TextStyle(fontSize: 30),
                    ),
                    SvgPicture.asset(Assets.plus_0,
                        semanticsLabel: 'A Volcano Hybrid Logo'),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(Assets.heat_0,
                        semanticsLabel: 'activate heating'),
                    SvgPicture.asset(Assets.logoVH,
                        semanticsLabel: 'A Volcano Hybrid Logo'),
                    SvgPicture.asset(Assets.air_0,
                        semanticsLabel: 'activate air'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
