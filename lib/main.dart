import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mensagens Positivas',
      theme: ThemeData(

        primarySwatch: Colors.lightBlue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Mensagens Positivas'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
    'You’re off to great places, today is your day. Your mountain is waiting, so get on your way.',
    'You always pass failure on the way to success.',
    'No one is perfect - that’s why pencils have erasers.',
    'You’re braver than you believe, and stronger than you seem, and smarter than you think.',
    'Winning doesn’t always mean being first. Winning means you’re doing better than you’ve done before.'
  ];
  List _autores = [
    'Dr. Seuss',
    'Mickey Rooney',
    'Wolfgang Riebe',
    'A.A. Mine',
    'Bonnie Blair'
  ];

  void _selecionarMensagem() {
    setState(() {
      _numeroAleatorio = new Random().nextInt(5);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              _autores[_numeroAleatorio],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _selecionarMensagem,
        tooltip: 'Increment',
        child: Icon(Icons.cached),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
