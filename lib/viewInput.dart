// ignore_for_file: file_names, prefer_const_constructors, duplicate_ignore, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016048_muchlismardais/controller.dart';
import 'package:posttest6_1915016048_muchlismardais/inputPage.dart';
import 'package:posttest6_1915016048_muchlismardais/main.dart';

class ViewInput extends StatelessWidget {
  ViewInput({super.key});

  final GetxTeksController inputController = Get.put(GetxTeksController());
  final BahasaSelection inputRadio = Get.put(BahasaSelection());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hasil Input Buku", style: TextStyle(fontSize: 16.0)),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.orangeAccent, Colors.blue]),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              MyApp().gambarHeader(),
              MyApp().teksHeader("Hasil Input Buku"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Column(
                  children: [
                    InputDataPage().tempatInput(
                      TextCapitalization.words,
                      inputController.namaBukuCtrl,
                      TextInputType.name,
                      [FilteringTextInputFormatter.singleLineFormatter],
                      "Nama Buku",
                      "Nama Buku Belum Dinput",
                      Icon(Icons.book),
                      true,
                    ),
                    InputDataPage().tempatInput(
                      TextCapitalization.words,
                      inputController.penulisBukuCtrl,
                      TextInputType.name,
                      [FilteringTextInputFormatter.singleLineFormatter],
                      "Penulis Buku",
                      "Penulis Buku Belum Dinput",
                      Icon(Icons.person),
                      true,
                    ),
                    InputDataPage().tempatInput(
                      TextCapitalization.words,
                      inputController.penerbitBukuCtrl,
                      TextInputType.name,
                      [FilteringTextInputFormatter.singleLineFormatter],
                      "Penerbit Buku",
                      "Penerbit Buku Belum Dinput",
                      Icon(Icons.home),
                      true,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: TextFormField(
                        readOnly: true,
                        textCapitalization: TextCapitalization.sentences,
                        controller: inputController.deskripsiBukuCtrl,
                        maxLines: 2,
                        decoration: InputDecoration(
                          labelText: "Deskripsi Buku",
                          hintText: "Deskripsi Buku Belum Dinput",
                          icon: Icon(Icons.description),
                        ),
                      ),
                    ),
                    InputDataPage().tempatInput(
                      TextCapitalization.none,
                      inputController.isbnBukuCtrl,
                      TextInputType.number,
                      [FilteringTextInputFormatter.digitsOnly],
                      "ISBN Buku",
                      "ISBN Buku Belum Dinput",
                      Icon(Icons.copyright),
                      true,
                    ),
                    InputDataPage().tempatInput(
                      TextCapitalization.none,
                      inputController.hargaBukuCtrl,
                      TextInputType.number,
                      [FilteringTextInputFormatter.digitsOnly],
                      "Harga Buku (Rp)",
                      "Harga Buku Belum Dinput",
                      Icon(Icons.monetization_on),
                      true,
                    ),
                    InputDataPage().tempatInput(
                      TextCapitalization.none,
                      inputController.jumlahHalamanBukuCtrl,
                      TextInputType.number,
                      [FilteringTextInputFormatter.digitsOnly],
                      "Jumlah Halaman Buku",
                      "Jumlah Halaman Buku Belum Dinput",
                      Icon(Icons.numbers),
                      true,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text(
                        "Bahasa Buku:",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "${inputRadio.bahasa.value}",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
