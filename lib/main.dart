import 'package:flutter/material.dart';
import 'package:soundboard/ButtonWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo Home Page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ButtonWidget(
                  color: Colors.red,
                  noiseName: 'Doggo',
                  fileName: 'dog.mp3',
                ),
                ButtonWidget(
                  color: Colors.blue,
                  noiseName: 'Air Horn',
                  fileName: 'airhorn.wav',
                ),
                ButtonWidget(
                    color: Colors.purple,
                    noiseName: 'Crash',
                    fileName: 'crash.mp3'),
                ButtonWidget(
                    color: Colors.orange,
                    noiseName: 'Real Airhorn',
                    fileName: 'mlg-airhorn.mp3'),
                ButtonWidget(
                  color: Colors.green,
                  noiseName: 'Weird Cat Sound',
                  fileName: 'Cat-sound-effect.mp3',
                ),
              ],
            ),
          ),
        ));
  }
}
