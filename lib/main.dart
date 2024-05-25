import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioPlayer();

  Future<void> playSound(int soundNumber) async {
    await player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(children: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.red),
              ),
              onPressed: () async {
                await playSound(1);
              },
              child: Text(
                '',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.orange),
              ),
              onPressed: () async {
                await playSound(2);
              },
              child: Text(
                '',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.yellow),
              ),
              onPressed: () async {
                await playSound(3);
              },
              child: Text(
                '',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.green),
              ),
              onPressed: () async {
                await playSound(4);
              },
              child: Text(
                '',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal),
              ),
              onPressed: () async {
                await playSound(5);
              },
              child: Text(
                '',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () async {
                await playSound(6);
              },
              child: Text(
                '',
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
              ),
              onPressed: () async {
                await playSound(7);
              },
              child: Text(
                '',
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
