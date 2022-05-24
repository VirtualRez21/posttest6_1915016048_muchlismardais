// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016048_muchlismardais/controller.dart';
import 'package:posttest6_1915016048_muchlismardais/main.dart';
import 'package:posttest6_1915016048_muchlismardais/viewInput.dart';

class InputDataPage extends StatelessWidget {
  InputDataPage({super.key});

  Widget judulKolomTabel(String title) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
    );
  }

  Widget isiKolomTabel(String isi) {
    return Text(
      isi,
      textAlign: TextAlign.center,
    );
  }

  Widget tempatInput(
      TextCapitalization kapital,
      final ctrl,
      TextInputType type,
      List<TextInputFormatter> format,
      String label,
      String hint,
      Widget ikon,
      bool aktif) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: TextFormField(
        readOnly: aktif,
        textCapitalization: kapital,
        controller: ctrl,
        keyboardType: type,
        inputFormatters: format,
        decoration:
            InputDecoration(labelText: label, hintText: hint, icon: ikon),
      ),
    );
  }

  final GetxTeksController inputController = Get.put(GetxTeksController());
  final BahasaSelection inputRadio = Get.put(BahasaSelection());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Input Buku", style: TextStyle(fontSize: 16.0)),
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
              MyApp().teksHeader("Input Data Buku"),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Column(
                  children: [
                    tempatInput(
                        TextCapitalization.words,
                        inputController.namaBukuCtrl,
                        TextInputType.name,
                        [FilteringTextInputFormatter.singleLineFormatter],
                        "Nama Buku",
                        "Isi Nama Buku",
                        Icon(Icons.book),
                        false),
                    tempatInput(
                        TextCapitalization.words,
                        inputController.penulisBukuCtrl,
                        TextInputType.name,
                        [FilteringTextInputFormatter.singleLineFormatter],
                        "Penulis Buku",
                        "Isi Penulis Buku",
                        Icon(Icons.person),
                        false),
                    tempatInput(
                        TextCapitalization.words,
                        inputController.penerbitBukuCtrl,
                        TextInputType.name,
                        [FilteringTextInputFormatter.singleLineFormatter],
                        "Penerbit Buku",
                        "Isi Penerbit Buku",
                        Icon(Icons.home),
                        false),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: TextFormField(
                        readOnly: false,
                        textCapitalization: TextCapitalization.sentences,
                        controller: inputController.deskripsiBukuCtrl,
                        maxLines: 2,
                        decoration: InputDecoration(
                          labelText: "Deskripsi Buku",
                          hintText: "Isi Deskripsi Buku",
                          icon: Icon(Icons.description),
                        ),
                      ),
                    ),
                    tempatInput(
                        TextCapitalization.none,
                        inputController.isbnBukuCtrl,
                        TextInputType.number,
                        [FilteringTextInputFormatter.digitsOnly],
                        "ISBN Buku",
                        "Isi ISBN Buku",
                        Icon(Icons.copyright),
                        false),
                    tempatInput(
                        TextCapitalization.none,
                        inputController.hargaBukuCtrl,
                        TextInputType.number,
                        [FilteringTextInputFormatter.digitsOnly],
                        "Harga Buku (Rp)",
                        "Isi Harga Buku",
                        Icon(Icons.monetization_on),
                        false),
                    tempatInput(
                        TextCapitalization.none,
                        inputController.jumlahHalamanBukuCtrl,
                        TextInputType.number,
                        [FilteringTextInputFormatter.digitsOnly],
                        "Jumlah Halaman Buku",
                        "Isi Jumlah Halaman Buku",
                        Icon(Icons.numbers),
                        false),
                    Container(
                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text(
                        "Bahasa Buku:",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    ListTile(
                      title: const Text('English'),
                      leading: Obx(
                        () => Radio(
                          value: "English",
                          groupValue: inputRadio.bahasa.value,
                          onChanged: (value) {
                            inputRadio.ubahBahasa(value);
                          },
                        ),
                      ),
                    ),
                    ListTile(
                      title: const Text('Indonesia'),
                      leading: Obx(
                        () => Radio(
                          value: "Indonesia",
                          groupValue: inputRadio.bahasa.value,
                          onChanged: (value) {
                            inputRadio.ubahBahasa(value);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Container(
                  width: 120,
                  height: 35,
                  margin:
                      const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff2e9db4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    onPressed: () {
                      Get.snackbar(
                        "Notifikasi",
                        "Data Berhasil Disimpan",
                        icon: Icon(Icons.checklist, color: Colors.blue),
                        snackPosition: SnackPosition.BOTTOM,
                      );
                      Get.to(
                        ViewInput(),
                      );
                    },
                    child: Text(
                      "Simpan Buku",
                      style: TextStyle(
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
