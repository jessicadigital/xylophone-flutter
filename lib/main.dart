import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  Future<void> playSound(int soundNumber) async {
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  Widget buildKey(int soundNumber, Color background) {
    return Expanded(
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll<Color>(background),
          shape: const WidgetStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )
          ),
        ),
        onPressed: () async {
          await playSound(soundNumber);
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
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.teal),
                buildKey(6, Colors.blue),
                buildKey(7, Colors.purple),
              ]),
        ),
      ),
    );
  }
}
