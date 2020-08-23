import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomSheet',
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

class _MyHomePageState extends State<MyHomePage>{
  final _scaffoldKey =new GlobalKey<ScaffoldState>();
  VoidCallback _showPersBottomSheetCallBack;

  @override
  void initState(){
    super.initState();
    _showPersBottomSheetCallBack=_showPersistentBottomSheet;
  }
  void _showPersistentBottomSheet(){
    setState(() {
      _showPersBottomSheetCallBack=null;
    });
    _scaffoldKey.currentState.showBottomSheet((context){
      return new Container(
        height: 200.0,
        color: Colors.green,
        child: new Center(
          child: new Text("Persistent BottomSheet",textScaleFactor: 2,
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
        ),
      );
    }).closed.whenComplete((){
      if(mounted){
        setState(() {
          _showPersBottomSheetCallBack=_showPersistentBottomSheet;
        });
      }
    });
  }
  void _showModalSheet(){
    showModalBottomSheet(
      context: context,
      builder: (builder){
        return new Container(
          height: 200.0,
          color: Colors.green,
          child: new Center(
            child: new Text(" Modal BottomSheet",textScaleFactor: 2,
             style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key:_scaffoldKey,
      appBar: new AppBar(
        title: new Text("Bottomsheet"),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Text("GFG",textScaleFactor: 2,)
        ],
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              color: Colors.red,
                onPressed: _showPersBottomSheetCallBack,
              child: new Text("Persistent",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 10.0),
            ),
            new RaisedButton(
              color: Colors.red,
                onPressed: _showModalSheet,
              child: new Text("Model",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
      backgroundColor: Colors.lightBlue[100],
    );
  }
}
