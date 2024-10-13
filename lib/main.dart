import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
       backgroundColor: Color(0xFF0E0F20),
       title: Text('Xylophone'),
      ),
      body: Xylophone(),

    )
  ));
}

class Xylophone extends StatelessWidget {
  Expanded playsound(int num, Color color){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
           backgroundColor: color,
        ),
        onPressed: () {
          final player = AudioCache();
          player.play('note$num.wav');

        },
        child: Text(""),
      ),
    );
  }
  const Xylophone({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [
        playsound(1,Colors.red),
        playsound(2,Colors.blue),
        playsound(3,Colors.yellow),
        playsound(4,Colors.orange),
        playsound(5,Colors.indigo),
        playsound(6,Colors.brown),
        playsound(7,Colors.green),
         ],
    );
  }
}
// Play a sound as a one-shot, releasing its resources when it finishes playing.

