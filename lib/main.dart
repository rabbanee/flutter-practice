  
// // code below is homeworksss
// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.deepOrange,
//       ),
//       home: MyApp(),
//     ));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Listview'),
//       ),
//       body: ListView(
//         children: <Widget>[
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text('Android Cupcake'),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text('Android Donus'),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text('Android Cupcake'),
//           ),
//           Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Text('Android Cupcake'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.deepOrange,
//       ),
//       home: MainApp(),
//     ));

// class MainApp extends StatelessWidget {

//   var androidVersions = [
//     "Android Cupcake",
//     "Android Donut",
//     "Android Eclair",
//     "Android Froyo",
//     "Android Gingerbread",
//     "Android Honeycomb",
//     "Android Ice Cream Sandwich",
//     "Android Jelly Bean",
//     "Android Kitkat",
//     "Android Lollipop",
//     "Android Marshmallow",
//     "Android Nougat",
//     "Android Oreo",
//     "Android Pie"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter ListView"),
//       ),
//       body: ListView.builder(
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(androidVersions[index]),
//           );
//         },
//         itemCount: androidVersions.length,
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.deepOrange,
//       ),
//       home: MyApp(),
//     ));

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter ListView"),
//       ),
//       body: ListView(
//         children: <Widget>[
//           ListTile(
//             title: Text('Lorem Ipsum'),
//           ),
//           ListTile(
//             title: Text('Lorem Ipsum'),
//           ),
//           ListTile(
//             title: Text('Lorem Ipsum'),
//           ),
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter ListView"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Lorem Ipsum'),
            subtitle: Text('ini subtitle'),
            dense: true,
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            )
          ),
          ListTile(
            title: Text('Lorem Ipsum'),
             leading: CircleAvatar(
              backgroundImage: NetworkImage(''),
            )
          ),
          ListTile(
            title: Text('Lorem Ipsum'),
          ),
        ],
      ),
    );
  }
}