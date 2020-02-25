import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List data = [
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
    {
      'image': 'image/image.png',
      'title': 'Accumulating Cash',
      'subtitle': 'I am Groot'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Wheel Scroll View'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(38.0),
            child: ListWheelScrollView.useDelegate(
              itemExtent: 57,
              offAxisFraction: 0.5,
              childDelegate: ListWheelChildLoopingListDelegate(
                  children: List<Widget>.generate(
                      data.length,
                      (index) => Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Image(image: AssetImage(data[index]['image'])),
                              SingleChildScrollView(
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(padding: EdgeInsets.all(5)),
                                      Text(data[index]['title'],
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold)),
                                      Padding(padding: EdgeInsets.all(5)),
                                      Text(data[index]['subtitle'],
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.bold)),
                                      Padding(padding: EdgeInsets.all(8)),
                                    ]),
                              ),
                            ],
                          ))),
            ),
          ),
        ));
  }
}
