import 'package:flutter/material.dart';
//
import 'package:materi/model/model_input.dart';
import 'package:materi/page/login/passing_login.dart';

class InputDataLogin extends StatefulWidget {
  @override
  _InputDataLoginState createState() => _InputDataLoginState();
}

class _InputDataLoginState extends State<InputDataLogin> {
  //variable untuk inputan
  var _emailController = new TextEditingController();
  var _passwordController = new TextEditingController();

  //variable untuk validasi _form
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      //buat sebuah form untuk menampung validasi inputan
      body: Form(
        //memanggil variable validari
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  //gunakan TextFormField untuk sebuah inputan
                  TextFormField(
                    //controller yang membaca variable inputan
                    controller: _emailController,
                    //mengubah inputan ke type email
                    keyboardType: TextInputType.emailAddress,
                    //untuk mempercantil sebuah form input
                    decoration: new InputDecoration(
                        hintText: 'Email',
                        labelText: 'masukkan email',
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    //untuk membuat fokus ke form inputan
                    autofocus: true,
                    //digunakan untuk validasi yang digunakan untuk mewajibkan data wajib diisi
                    validator: (value) {
                      if (value.isEmpty) {
                        //jika data kosong maka
                        return 'email anda salah';
                      } else {
                        //jika tidak maka akan di teruskan
                        return null;
                      }
                    },
                  ),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: new InputDecoration(
                        hintText: 'Password',
                        labelText: 'masukkan password',
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    autofocus: true,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Password anda salah';
                      } else {
                        return null;
                      }
                    },
                  ),
                  //widget untuk membuat sebuah tombol
                  RaisedButton(
                    //untuk mengaktivkan sebuah tombol
                    onPressed: () {
                      //apabila tombol di pencet dan data kosong maka data proses di hentikan,
                      //jika data terisi maka di lanjutkan
                      if (_formKey.currentState.validate()) {
                        var route = new MaterialPageRoute(
                          builder: (BuildContext context) => PassingDataLogin(
                            //dikirimkan untuk di baca atau di passing
                            //memanggil class pada model_input.dart
                            value: ModelInput(
                              //nama di panggil dari class model input
                              nama: _emailController.text,
                              password: _passwordController.text,
                            ),
                          ),
                        );

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
            ),
          ],
        ),
      ),
    );
  }
}
