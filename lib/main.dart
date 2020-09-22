import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Form Pendaftaran",
    home: Myapp(),
  ));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  TextEditingController controllernama = new TextEditingController();
  String materi;
  List listMateri = ['Flutter', 'Laravel', 'React JS'];
  String jenisKelamin = '';

  bool paket1 = false;
  bool paket2 = false;
  bool paket3 = false;
  String paket1Value = '';
  String paket2Value = '';
  String paket3Value = '';

  void paketValueHandler() {
    paket1 ? paket1Value = 'Paket 1' : paket1Value = '';
    paket2 ? paket2Value = 'Paket 2' : paket2Value = '';
    paket3 ? paket3Value = 'Paket 3' : paket3Value = '';
  }

  void kirimData() {
    paketValueHandler();
    AlertDialog alertDialog = AlertDialog(
      title: Text('Hasil'),
      content: Container(
        height: 200.0,
        child: Column(
          children: [
            Text("Nama Lengkap : ${controllernama.text}"),
            Text("Materi : $materi"),
            Text("Jenis Kelamin : $jenisKelamin"),
            Text("Tambahan : $paket1Value $paket2Value $paket3Value"),
            // RaisedButton(
            //   child: Text("OK"),
            //   onPressed: () => Navigator.pop(context),
            // )
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () => Navigator.pop(context),
          child: Text("OK"),
        )
      ],
      elevation: 24.0,
    );
    showDialog(context: context, child: alertDialog);
  }

  void pilihJK(String value) {
    setState(() {
      jenisKelamin = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Pendaftaran"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: controllernama,
              decoration: InputDecoration(
                hintText: "Nama Lengkap",
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              // keyboardType: TextInputType.text(),
            ),
            Container(
              width: 650,
              child: DropdownButton(
                  hint: Text('Materi Yang Di Ambil'),
                  value: materi,
                  items: listMateri.map((value) {
                    return DropdownMenuItem(child: Text(value), value: value);
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      materi = value;
                    });
                  }),
            ),
            Text('Jenis Kelamin'),
            Row(
              children: <Widget>[
                Radio(
                  value: 'Laki - Laki',
                  groupValue: jenisKelamin,
                  onChanged: (String value) {
                    pilihJK(value);
                  },
                  activeColor: Colors.blue,
                ),
                Text('Laki - Laki'),
                Radio(
                  value: 'Perempuan',
                  groupValue: jenisKelamin,
                  onChanged: (String value) {
                    pilihJK(value);
                  },
                  activeColor: Colors.blue,
                ),
                Text('Perempuan'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: paket1,
                  onChanged: (bool value) {
                    setState(() {
                      paket1 = value;
                    });
                  },
                ),
                Text('Paket 1'),
                Checkbox(
                  value: paket2,
                  onChanged: (bool value) {
                    setState(() {
                      paket2 = value;
                    });
                  },
                ),
                Text('Paket 2'),
                Checkbox(
                  value: paket3,
                  onChanged: (bool value) {
                    setState(() {
                      paket3 = value;
                    });
                  },
                ),
                Text('Paket 3'),
              ],
            ),
            RaisedButton(
              child: Text(
                "Kirim",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                kirimData();
              },
            ),
          ],
        ),
      ),
    );
  }
}
