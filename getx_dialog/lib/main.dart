import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GeeksforGeeks Dialog'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Dialog'),
          onPressed: (){
            Get.defaultDialog(
              title: "GeeksforGeeks",
              middleText: "Hello world!",
              backgroundColor: Colors.green,
              titleStyle: TextStyle(color: Colors.white),
              middleTextStyle: TextStyle(color: Colors.white),
              textConfirm: "Confirm",
              textCancel: "Cancel",
              cancelTextColor: Colors.white,
              confirmTextColor: Colors.white,
              buttonColor: Colors.red,
              barrierDismissible: false,
              radius: 50,
              content: Column(
                children: [
                  Container(child:Text("Hello 1")),
                  Container(child:Text("Hello 2")),
                  Container(child:Text("Hello 3")),
                ],
              )
            );
          },
        )
      ),
    );
  }
}