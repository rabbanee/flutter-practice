import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contacts",
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controllernama = new TextEditingController();
  TextEditingController controllerphone = new TextEditingController();
  TextEditingController controlleraddress = new TextEditingController();
  TextEditingController controllercity = new TextEditingController();
  TextEditingController controlleremail = new TextEditingController();
  TextEditingController controllerbirthday = new TextEditingController();
  TextEditingController controllerzip = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String area;
  String state;
  List listArea = ['+62', '+1', '+2'];
  List listState = ['Indonesia', 'US', 'UK'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contacts"),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Icon(Icons.person),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 260,
                        child: TextFormField(
                          controller: controllernama,
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "Name",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Name is required';
                            }
                            return null;
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.phone),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 140,
                        child: TextFormField(
                          controller: controllerphone,
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "Phone",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Phone is required';
                            }
                            if (RegExp(r"(^(?:[+0]9)?[0-9]{10,12}$)")
                                    .hasMatch(value) !=
                                true) {
                              return 'Number is not valid';
                            }
                            return null;
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8.0),
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: DropdownButtonFormField(
                            hint: Text('Area'),
                            value: area,
                            items: listArea.map((value) {
                              return DropdownMenuItem(
                                  child: Text(value), value: value);
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'Area is required';
                              }
                            },
                            onChanged: (value) {
                              setState(() {
                                area = value;
                              });
                            }),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.pin_drop),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 260,
                        child: TextFormField(
                          controller: controlleraddress,
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "Address",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Address is required';
                            }
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 260,
                        child: TextFormField(
                          controller: controllercity,
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "City",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'City is required';
                            }
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8.0),
                        width: 102,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                        ),
                        child: DropdownButtonFormField(
                            hint: Text('State'),
                            value: state,
                            items: listState.map((value) {
                              return DropdownMenuItem(
                                  child: Text(value), value: value);
                            }).toList(),
                            validator: (value) {
                              if (value == null) {
                                return 'State is required';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {
                                state = value;
                              });
                            }),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 140,
                        child: TextFormField(
                          controller: controllerzip,
                          keyboardType: TextInputType.numberWithOptions(),
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "Zip",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Zip is required';
                            }
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.email),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 260,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: controlleremail,
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "Email",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email is required';
                            }
                            if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value) !=
                                true) {
                              return 'Email is not valid';
                            }
                            return null;
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.cake),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        width: 260,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: controllerbirthday,
                          decoration: InputDecoration(
                            border: new UnderlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8.0),
                                topRight: Radius.circular(8.0),
                              ),
                            ),
                            labelText: "Birthday",
                            contentPadding: EdgeInsets.only(
                              left: 8.0,
                            ),
                            filled: true,
                            fillColor: Colors.grey[300],
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Birthday is required';
                            }
                            return null;
                          },
                          // keyboardType: TextInputType.text(),
                        ),
                      ),
                    ],
                  ),
                  RaisedButton(
                    child: Text(
                      "Kirim",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.

                        Scaffold.of(context)
                            .showSnackBar(SnackBar(content: Text('Good Job!')));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
