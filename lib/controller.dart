import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxTeksController extends GetxController {
  var namaBuku = "".obs;
  var penulisBuku = "".obs;
  var penerbitBuku = "".obs;
  var deskripsiBuku = "".obs;
  var isbnBuku = "".obs;
  var hargaBuku = "".obs;
  var jumlahHalamanBuku = "".obs;
  var language = "".obs;

  final namaBukuCtrl = TextEditingController();
  final penulisBukuCtrl = TextEditingController();
  final penerbitBukuCtrl = TextEditingController();
  final deskripsiBukuCtrl = TextEditingController();
  final isbnBukuCtrl = TextEditingController();
  final hargaBukuCtrl = TextEditingController();
  final jumlahHalamanBukuCtrl = TextEditingController();
}

class BahasaSelection extends GetxController {
  var bahasa = "".obs;

  ubahBahasa(var language) {
    bahasa.value = language;
  }
}
