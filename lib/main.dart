import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
              title: Text('Daffa'),
              subtitle: Text('085277xxxxx'),
              leading: CircleAvatar(
                child: Icon(Icons.person),
              ),
              onTap: () {
                final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
                Scaffold.of(context).showSnackBar(snackBar);
              },
              trailing: Icon(Icons.keyboard_arrow_right)),
          ListTile(
            title: Text('Ariq'),
            subtitle: Text('085188xxxxx'),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            onTap: () {
              final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
              Scaffold.of(context).showSnackBar(snackBar);
            },
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            title: Text('Khaidir'),
            subtitle: Text('086197xxxxx'),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            onTap: () {
              final snackBar = SnackBar(content: Text('Yay! A SnackBar!'));
              Scaffold.of(context).showSnackBar(snackBar);
            },
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dialpad,
              ),
              title: Text(
                'Dial',
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.contacts,
              ),
              title: Text('Contacts')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sms,
                color: Colors.grey,
              ),
              title: Text('SMS')),
        ],
        currentIndex: 1,
      ),
    );
  }
}
