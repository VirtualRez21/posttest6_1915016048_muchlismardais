// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_interpolation_to_compose_strings, unused_import, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016048_muchlismardais/detailsPage.dart';
import 'package:posttest6_1915016048_muchlismardais/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget gambar(String path, String judul, BuildContext konteks, String desk,
      String harga) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17.0),
              border: Border.all(
                color: Color(0xff2e9db4),
                width: 3,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17.0),
              child: Image(
                image: AssetImage('assets/' + path),
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 170,
            child: ElevatedButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff2e9db4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              onPressed: () => Get.to(
                DetailPage(
                    foto: path, judul: judul, harga: harga, deskripsi: desk),
              ),
              child: Text(
                judul,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget gambarHeader() {
    return Container(
      child: Image(
        image: AssetImage('assets/Gramedia.png'),
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget teksHeader(String teks) {
    return Container(
      child: Text(
        teks,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          wordSpacing: 10,
          decoration: TextDecoration.overline,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gramedia Digital | Posttest 6',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
