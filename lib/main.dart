import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[700],
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: AskmePage(),
      ),
    ),
  );
}

class AskmePage extends StatefulWidget {
  const AskmePage({Key? key}) : super(key: key);

  @override
  _AskmePageState createState() => _AskmePageState();
}

class _AskmePageState extends State<AskmePage> {
  int ballValue = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            // ignore: deprecated_member_use
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballValue = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}
