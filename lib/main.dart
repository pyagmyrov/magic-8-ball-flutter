import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text(
              'Näme sorasaň sora',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
          body: BallApp(),
        ),
      ),
    );

class BallApp extends StatefulWidget {
  @override
  _BallAppState createState() => _BallAppState();
}


class _BallAppState extends State<BallApp> {
    var suratSan = 1;
  @override
  Widget build(BuildContext context) {

    void randomMa(){
        setState(() {
            suratSan = Random().nextInt(5) + 1;
            print('$suratSan');
        });
    }
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {

            randomMa();

            },

            child: Image.asset('images/ball$suratSan.png'),
        ),
      ),
    );
  }
}
