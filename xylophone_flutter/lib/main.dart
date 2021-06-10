import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                TextButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)),
                  onPressed: (){
                    playSound(1);
                  },
                ),
                Container(
                  color: Colors.pink,
                  child: TextButton(
                    onPressed: (){
                      playSound(2);
                    },
                    child: Text(('Click me!')),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){
                    playSound(3);
                  },
                  child: Text(('Click me!')),
                ),
                TextButton(
                  onPressed: (){
                    playSound(4);
                  },
                  child: Text(('Click me!')),
                ),
                TextButton(
                  onPressed: (){
                    playSound(5);
                  },
                  child: Text(('Click me!')),
                ),
                TextButton(
                  onPressed: (){
                    playSound(6);
                  },
                  child: Text(('Click me!')),
                ),
                TextButton(
                  onPressed: (){
                    playSound(7);
                  },
                  child: Text(('Click me!')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
