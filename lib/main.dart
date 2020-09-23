import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contacts",
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.50,
            height: MediaQuery.of(context).size.width * 0.80,
            decoration: BoxDecoration(color: Colors.orange),
            child: Center(
              child: Text('Content'),
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.width * 0.50,
              decoration: BoxDecoration(color: Colors.red),
              child: Center(
                child: Text('Menu'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
