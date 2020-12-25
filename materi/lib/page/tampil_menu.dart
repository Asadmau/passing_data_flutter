import 'package:flutter/material.dart';
//untuk import register_data.dart
import 'package:materi/page/daftar/register_data.dart';
//untuk import input_data_login.dart
import 'package:materi/page/login/input_data_login.dart';
//untuk import navigation.dart
import 'package:materi/page/navigation/navigation.dart';

class PageMenu extends StatefulWidget {
  @override
  _PageMenuState createState() => _PageMenuState();
}

class _PageMenuState extends State<PageMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Row(
          //untuk mengatur posisi
          crossAxisAlignment: CrossAxisAlignment.center,
          //sama untuk mengatur posisi juga
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              //untuk membuat sebuah kotak dengan luas
              width: 100.0,
              //untuk mengatur kotak dengan tinggi
              height: 100.0,
              //mengatur jarak sama seperti padding
              margin: EdgeInsets.all(10),
              //untuk membuat sebuah kotak
              decoration: BoxDecoration(
                //mewarnai sebuah border kotak
                color: Colors.amber[200],
                //untuk menjadikan kotak sebagai lingkaran
                borderRadius: BorderRadius.circular(50),
              ),
              //untuk menyediakan dan menjadikan sebuah gamabr sebagai button atau tombol
              child: GestureDetector(
                //ambil gambar sesuai direktori yang di sebutkan pada pubspec.yml
                child: Image.asset('image/centang.png'),
                //untuk tombol pindah
                onTap: () {
                  //variable untuk pindah halaman
                  var route = MaterialPageRoute(
                    builder: (context) =>
                        InputDataLogin(), //mengarahkan dan pinda kepada halaman lain
                  );
                  //membaca dan memvalidasi perpindahan
                  Navigator.of(context).push(route);
                },
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                child: Image.asset('image/xxx.png'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (context) => InputDaftar(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.amber[200],
                borderRadius: BorderRadius.circular(50),
              ),
              child: GestureDetector(
                child: Image.asset('image/nav.png'),
                onTap: () {
                  var route = MaterialPageRoute(
                    builder: (context) => BotNav(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
