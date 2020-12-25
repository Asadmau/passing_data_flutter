import 'package:flutter/material.dart';
import 'package:materi/model/model_input.dart';

class PassingDataLogin extends StatefulWidget {
  //variabel untuk memanggil model yang sudah di buat
  final ModelInput value;

  //memanggil key pada passing_data.dart
  PassingDataLogin({
    Key key,
    this.value,
  }) : super(key: key);
  @override
  _PassingDataLoginState createState() => _PassingDataLoginState();
}

class _PassingDataLoginState extends State<PassingDataLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar untuk membuat sebuah inisial atau nama halaman
      //yang ada di atas menubar
      appBar: AppBar(
        //meletakkan nama halaman di tengah
        centerTitle: true,
        //menamakan sebuah halaman page
        title: Text('ambil data'),
        //mewarnai background appbar
        backgroundColor: Colors.amber,
      ),
      //widget container untuk membuat atau mendesaind sebuah layout
      body: new Container(
        //widget column untuk digunakan menampilkan data atau tampilan
        //secara vertical
        //child untuk membuat sebuah anakan dari widget
        //dimna container hanya boleh menggunakan satu anakan widget
        //yang artinya child untuk satu anakan
        child: new Column(
          // dan column boleh memiliki banyak anakan widget
          //yang artinya childern untuk menampung banyak anakan dari widget
          children: <Widget>[
            //widget padding untuk mengatur jarak
            Padding(
              //menentukan jarak yang akan diberikan
              padding: EdgeInsets.all(10.0),
              //widget text untuk sebuah nama atau membaca sebuah isi
              child: Text(
                // widget.value.email, di ambil dari variable final ModelInput value;
                //dan fungsi PassingDataLogin({Key key,this.value,}) : super(key: key);
                'Email : ' + widget.value.email,
                //style untuk mengatur style text
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                //untuk mengatur posisi text
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
