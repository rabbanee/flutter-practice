import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.blue,
//       ),
//       home: MyApp(),
//     ));
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/contacts',
      routes: {
        '/contacts': (context) => ContactsPage(),
        '/contact/1': (context) => ContactPage1(),
        '/contact/2': (context) => ContactPage2(),
        '/contact/3': (context) => ContactPage3(),
      },
    );
  }
}

class ContactPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Detail",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://mysmk.smkmadinatulquran.sch.id/img/avatar.jpeg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Daffa',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '085277xxxxx',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.call),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Call'),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.sms),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('SMS'),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.share),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Share'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(14.0),
                ),
                color: Colors.blue,
              ),
              padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 272.0,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 24, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'The call is missed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.call_missed,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                      ],
                    ),
                  )
                  // Expanded(
                  //   child: Container(
                  //     height: 10.0,
                  //     child: ListView(
                  //       scrollDirection: Axis.horizontal,
                  //       children: <Widget>[Text('Daffa')],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Detail",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://mysmk.smkmadinatulquran.sch.id/img/avatar.jpeg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Ariq',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '085188xxxxx',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.call),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Call'),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.sms),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('SMS'),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.share),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Share'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(14.0),
                ),
                color: Colors.blue,
              ),
              padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 272.0,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 24, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'The call is missed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.call_missed,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                      ],
                    ),
                  )
                  // Expanded(
                  //   child: Container(
                  //     height: 10.0,
                  //     child: ListView(
                  //       scrollDirection: Axis.horizontal,
                  //       children: <Widget>[Text('Daffa')],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Detail",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                        'https://mysmk.smkmadinatulquran.sch.id/img/avatar.jpeg'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'Khaidir',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      '086197xxxxx',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.call),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Call'),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.sms),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('SMS'),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            CircleAvatar(
                              child: IconButton(
                                icon: Icon(Icons.share),
                                onPressed: () => {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text('Share'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(14.0),
                ),
                color: Colors.blue,
              ),
              padding: EdgeInsets.fromLTRB(16, 10, 0, 0),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'History',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 272.0,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 24, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'The call is missed',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.call_missed,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'August 25, 2020',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          subtitle: Text(
                            'Incoming call 2 minutes',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.call_received),
                          ),
                        ),
                      ],
                    ),
                  )
                  // Expanded(
                  //   child: Container(
                  //     height: 10.0,
                  //     child: ListView(
                  //       scrollDirection: Axis.horizontal,
                  //       children: <Widget>[Text('Daffa')],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactsPage extends StatelessWidget {
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
                Navigator.pushNamed(context, '/contact/1');
              },
              trailing: Icon(Icons.keyboard_arrow_right)),
          ListTile(
            title: Text('Ariq'),
            subtitle: Text('085188xxxxx'),
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/contact/2');
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
              Navigator.pushNamed(context, '/contact/3');
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
