// ignore_for_file: unused_field, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // ignore: unused_element
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            // ignore: prefer_const_constructors
            decoration: BoxDecoration(
              // ignore: prefer_const_constructors
              image: DecorationImage(
                fit: BoxFit.fill,
                // ignore: prefer_const_constructors
                image: NetworkImage(
                    "https://www.w3schools.com/howto/img_forest.jpg"),
              ),
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(left: 20.0,top: 10),
                  child: Column(
                    children: const <Widget>[
                      Text("วัดพระเเก้ว\nกรุงเทพฯ"),
                    ],
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, right: 2),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 10.0),
                      child: Text("3"),
                    )
                  ],
                ),
              ]),
              Padding(
                      padding: const EdgeInsets.all(20.0),
          child: Text("    วัดคู่บ้านคู่เมืองของประเทศไทย และกรุงรัตนโกสินทร์ ก็คือที่นี่ค่ะ วัดพระศรีรัตนศาสดาราม หรือ วัดพระเเก้ว เป็นวัดในพระบรมมหาราชวังเช่นเดียวกับวัดพระศรีสรรเพชญ์ ซึ่งเป็นวัดในพระราชวังหลวงในสมัยอยุธยา")
              )
        ],
      ),
    );
  }
}
