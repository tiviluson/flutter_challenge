import 'package:flutter/material.dart';
import 'package:flutter_day_2/Screen1.dart';
import 'package:flutter_day_2/Screen2.dart';
import 'package:flutter_day_2/Screen3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void setScreen(BuildContext context, StatelessWidget screen) {

  }

  Widget screenButton ({BuildContext context, String text, StatelessWidget screen}) {
    return ElevatedButton.icon(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
          animationDuration: Duration(milliseconds: 200),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )
          )
      ),
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => screen),
      ),
      icon: Icon(Icons.mobile_friendly_rounded),
      label: Text(text),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Flutter - Day 2"),
        actions: [
          MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen1()),
                );
              },
              child: Icon(Icons.arrow_forward),
          )
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              screenButton(context: context, text: "Go to Screen 1", screen: Screen1()),
              screenButton(context: context, text: "Go to Screen 2", screen: Screen2()),
              screenButton(context: context, text: "Go to Screen 3", screen: Screen3()),
            ],
          ),
      )
      );
  }
}