import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile',
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
String txt='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color:Colors.blue[50],
              child: ListTile(
                leading: Icon(Icons.add),
                title: Text('GFG title',textScaleFactor: 1.5,),
                trailing: Icon(Icons.done),
                subtitle: Text('This is subtitle'),
                selected: true,
                onTap: () {
                  setState(() {
                    txt='List Tile pressed';
                  });
                },
              ),
            ),
          ),
          Text(txt,textScaleFactor: 2,)
        ],
      ),
    );
  }
}