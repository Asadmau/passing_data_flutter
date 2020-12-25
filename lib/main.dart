//wajib menggunakan import import 'package:flutter/material.dart';
//untuk membaca libari flutter
import 'package:flutter/material.dart';
//untuk mengimport package dari tampilmenu
//yang akan di gunakan untuk membaca kodingan tampil menu
import 'package:materi/page/tampil_menu.dart';

//wajib menggunakan void main() {runApp(MyApp());}
//untuk menjalankan dan meng eksekusi koding dari aplikasi kita
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      //page menu sebuah class yang di panggil dari tempil_menu.dart
      home: PageMenu(),
    );
  }
}
