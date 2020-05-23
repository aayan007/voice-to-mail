import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:flutter/material.dart';

class backGroundDesign extends StatelessWidget {
  const backGroundDesign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      child: RotatedBox(
        quarterTurns: 2,
        child: WaveWidget(
          config: CustomConfig(
            gradients: [
              [Colors.deepPurple, Colors.deepPurple.shade200],
              [Colors.indigo.shade200, Colors.purple.shade200],
            ],
            durations: [19440, 10800],
            heightPercentages: [0.20, 0.25],
            blur: MaskFilter.blur(BlurStyle.solid, 10),
            gradientBegin: Alignment.bottomLeft,
            gradientEnd: Alignment.topRight,
          ),
          waveAmplitude: 0,
          size: Size(
            double.infinity,
            double.infinity,
          ),
        ),
      ),
    );
  }
}
