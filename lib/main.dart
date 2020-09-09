import 'package:flutter/material.dart';

// void main() => runApp(MyApp());
void main() => runApp(MaterialApp(
      home: Myapp(),
    ));

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Apps"),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: controllerName,
              decoration: new InputDecoration(
                hintText: 'Full Name',
                labelText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                prefixIcon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.numberWithOptions(),
            ),
            RaisedButton(
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Apps"),
//       ),
//       body: new Container(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           children: <Widget>[
//             TextField(
//               decoration: new InputDecoration(
//                 hintText: 'Full Name',
//                 labelText: 'Name',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.person),
//               ),
//             ),
//             RaisedButton(
//               child: Text(
//                 "Submit",
//                 style: TextStyle(color: Colors.white),
//               ),
//               color: Colors.blue,
//               onPressed: () {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
