import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell',
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

  String inkwell="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InkWell Widget"),
        actions: <Widget>[
          Text(
            "GFG",
            textScaleFactor: 3,
          )
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell="Inkwell Tapped";
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell="InkWell Long Pressed";
                });
              },
              child: Container(
                  color: Colors.green,
                  width: 120,
                  height: 70,
                  child: Center(
                      child: Text(
                    "Inkwell",
                    textScaleFactor: 2,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(inkwell,textScaleFactor: 2,),
            )
          ],
        ),
      ),
    );
  }
}
