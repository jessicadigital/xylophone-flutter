import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  Future<void> playSound(int soundNumber) async {
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey() {
    return Expanded(
      child: TextButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.red),
        ),
        onPressed: () async {
          await playSound(1);
        },
        child:Container(),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
                buildKey(),
              ]),
        ),
      ),
    );
  }
}
