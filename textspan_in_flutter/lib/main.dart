import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextSpan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GfG'),
        backgroundColor: Colors.green
        ),
        body: Center(
          child: Text.rich(
            TextSpan(
              text: 'This is textspan ',
              children: <InlineSpan>[
                TextSpan(
                  text: 'Widget in flutter',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                )
              ]
            )
          ),
        ),
        backgroundColor: Colors.lightBlue[50],
    );
  }
}
