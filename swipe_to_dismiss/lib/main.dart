import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is
  //the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swipe to dismiss',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPage extends StatelessWidget {
  final List<String> items =
      new List<String>.generate(80, (i) => "Item ${i + 1}");
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: new AppBar(
        title: new Text("Swipe to dismiss"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text("GFG", textScaleFactor: 3),
        ],
      ),
      body: new ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, int index) {
          return new Dismissible(
            key: new Key(items[index]),
            onDismissed: (direction) {
              items.removeAt(index);
              Scaffold.of(context).showSnackBar(
                  new SnackBar(content: new Text("Item dismissed successfully")));
            },
            background: new Container(
              color: Colors.red,
            ),
            child: Container(
              child: new ListTile(
                leading: Icon(Icons.list),
                title: new Text("GFG " + "${items[index]}"),
                trailing: Icon(Icons.done_all,color: Colors.green,),
              ),
            ),
          );
        },
      ),
    );
  }
}
