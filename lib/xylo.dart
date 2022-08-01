import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Xylo extends StatefulWidget {
  const Xylo({Key? key}) : super(key: key);

  @override
  State<Xylo> createState() => _XyloState();
}

class _XyloState extends State<Xylo> {

  Widget AudioButton({required Color color, required String num }){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play('note$num.wav');
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AudioButton(color: Colors.red, num: '1'),
            AudioButton(color: Colors.orange, num: '2'),
            AudioButton(color: Colors.yellow, num: '3'),
            AudioButton(color: Colors.green, num: '4'),
            AudioButton(color: Colors.teal, num: '5'),
            AudioButton(color: Colors.blue, num: '6'),
            AudioButton(color: Colors.purpleAccent, num: '7'),

          ],),
      ),
    );
  }
}
