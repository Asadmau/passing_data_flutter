import 'package:flutter/material.dart';
import 'package:materi/model/model_input.dart';

class PassingDataDaftar extends StatefulWidget {
  //variabel untuk memanggil model yang sudah di buat
  final ModelInput value;

  //memanggil key pada tampil_data_input
  PassingDataDaftar({
    Key key,
    this.value,
  }) : super(key: key);
  @override
  _PassingDataDaftarState createState() => _PassingDataDaftarState();
}

class _PassingDataDaftarState extends State<PassingDataDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ambil data'),
        backgroundColor: Colors.amber,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Nama : ' + widget.value.nama,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Email : ' + widget.value.email,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Alamat : ' + widget.value.alamat,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'No Telpon : ' + widget.value.nope,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Password: ' + widget.value.password,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
