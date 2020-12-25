import 'package:flutter/material.dart';
import 'package:materi/model/model_input.dart';
import 'package:materi/page/daftar/passing_data_daftar.dart';

class InputDaftar extends StatefulWidget {
  @override
  _InputDaftarState createState() => _InputDaftarState();
}

class _InputDaftarState extends State<InputDaftar> {
  var _namaController = new TextEditingController();
  var _emailController = new TextEditingController();
  var _alamatController = new TextEditingController();
  var _nopeController = new TextEditingController();
  var _passwordController = new TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Daftar Akun'),
        backgroundColor: Colors.amber,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _namaController,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Nama Lengkap',
                        labelText: 'Masukkan Nama',
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Masukkan Email',
                        icon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'email tidak boleh kosong';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: _alamatController,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Alamat Lengkap',
                        labelText: 'Masukkan Alamat',
                        icon: Icon(Icons.map),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Alamat tidak boleh kosong';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: _nopeController,
                    keyboardType: TextInputType.phone,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'Nomer telpon',
                        labelText: 'Masukkan Nomer Telpon',
                        icon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Nomer telepon tidak boleh salah';
                      } else {
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    autofocus: true,
                    decoration: InputDecoration(
                        hintText: 'password',
                        labelText: 'Masukkan password',
                        icon: Icon(Icons.phone),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password tidak boleh kosong';
                      } else {
                        return null;
                      }
                    },
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        var route = new MaterialPageRoute(
                            builder: (BuildContext context) =>
                                PassingDataDaftar(
                                  value: ModelInput(
                                      nama: _namaController.text,
                                      email: _emailController.text,
                                      alamat: _alamatController.text,
                                      nope: _nopeController.text,
                                      password: _passwordController.text),
                                ));
                        Navigator.of(context).push(route);
                      }
                    },
                    child: Text(
                      'KIRIM',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blue,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
