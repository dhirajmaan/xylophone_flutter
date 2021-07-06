import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color buttonColor, int noteNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(0.0),
        ),
        onPressed: () {
          playSound(noteNumber);
        },
        child: Container(
          color: buttonColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(buttonColor: Colors.red, noteNumber: 1),
              buildKey(buttonColor: Colors.orange, noteNumber: 2),
              buildKey(buttonColor: Colors.yellow, noteNumber: 3),
              buildKey(buttonColor: Colors.green, noteNumber: 4),
              buildKey(buttonColor: Colors.teal, noteNumber: 5),
              buildKey(buttonColor: Colors.purple, noteNumber: 6),
              buildKey(buttonColor: Colors.blue, noteNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
