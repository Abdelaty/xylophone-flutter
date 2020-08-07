import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  AudioCache player = AudioCache();

  Expanded buildKey(int noteNumber, Color noteColor) {
    return Expanded(
      child: FlatButton(
        color: noteColor,
        onPressed: () {
          playAudio(noteNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.teal),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playAudio(int noteNumber) {
    player.play('note$noteNumber.wav');
  }
}
