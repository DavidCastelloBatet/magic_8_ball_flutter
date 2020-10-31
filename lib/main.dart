import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(home: BallPage()));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 100, 250, 1),
        title: Text(
          'Ask Me Something !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            letterSpacing: 1.5,
          ),
        ),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50.0,
          ),
          Center(
            child: Image.asset(
              'images/ball$ballNumber.png',
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          ElevatedButton(
            onPressed: () {
              ballChange();
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Press',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ballChange() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }
}
