import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({this.color, this.noiseName, this.fileName});
  final Color color;
  final String noiseName;
  final String fileName;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(fileName);
        },
        child: Material(
          color: color,
          child: Center(
            child: Text(
              noiseName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

void playSound(String fileName) {
  final player = AudioCache();
  player.play(fileName);
}
