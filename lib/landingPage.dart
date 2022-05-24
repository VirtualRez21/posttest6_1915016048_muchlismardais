// ignore_for_file: file_names, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_string_escapes, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016048_muchlismardais/main.dart';
import 'package:posttest6_1915016048_muchlismardais/mainPage.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  Widget teksLandingPage(String teks, double size, Color warna) {
    return Text(
      teks,
      style:
          TextStyle(fontSize: size, color: warna, fontWeight: FontWeight.w600),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Flexible(
            child: ListView(
              children: [
                Container(
                  height: 325,
                  margin: EdgeInsets.only(top: 5, right: 5, left: 5),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyApp().gambar(
                        'a.jpg',
                        'Demon Slayer',
                        context,
                        "Bagaimana akhir dari pertarungan antara \"Iblis Penidur\" Enmu melawan Tanjiro yang melancarkan jurus pamungkas Hinokami Kagura `Hekira no Ten`!? Namun, tiba-tiba saja sosok baru muncul di hadapan Tanjiro! Enbashira Kyojuro Rengoku pun beraksi. Seperti apakah takdir yang terpampang di hadapan Tanjiro setelah mendengar kata-kata yang diucapkan orang hebat itu?",
                        "40.000",
                      ),
                      MyApp().gambar(
                        'b.jpg',
                        'Jujutsu Kaisen',
                        context,
                        "Program pertukaran dengan Akademi Jujutsu Kyoto dimulai. Pihak yang duluan menyingkirkan jurei tingkat 2 di area pertandinganlah yang akan jadi pemenangnya. Todo yang gemar berkelahi segera menyerang pihak Tokyo! Saat Todo dan Itadori saling berhadapan, anak-anak Kyoto yang lain ikut mengepung Itadori dengan niat untuk membunuhnya...!?",
                        "40.000",
                      ),
                      MyApp().gambar(
                        'c.jpg',
                        'Home Sweet Loan',
                        context,
                        "Empat orang yang berteman sejak SMA bekerja di perusahaan yang sama meski beda nasib. Di usia 31 tahun, mereka berburu rumah idaman yang minimal… nyerempet Jakarta. Kaluna, pegawai Bagian Umum, yang gajinya tak pernah menyentuh dua digit. Gadis ini kerja sampingan sebagai model bibir, bermimpi membeli rumah demi keluar dari situasi tiga kepala keluarga yang bertumpuk di bawah satu atap.",
                        "95.000",
                      ),
                      MyApp().gambar(
                        'd.jpg',
                        'Pagi di Amerika',
                        context,
                        "Ketika peluru memasuki jantungnya, gadis itu bersandar ke sebuah loker dan menyaksikan Kyle menembakkan pistol itu lagi dan lagi. Ketika gadis itu meluncur perlahan ke lantai, gadis itu mendapatkan pencerahan seakan sebuah vista, seluruh dunia terpandang dari sebuah puncak gunung. Surga dan dunia terkandung dalam sejarah pikiran : kami sungguh tak cukup mengasihi kyle, dan kyle telah menderita karena nya.",
                        "9.000",
                      ),
                      MyApp().gambar(
                        'e.jpg',
                        'Al-Qur\'an Cordoba',
                        context,
                        "Mushaf “Al-Qur'an Qordoba” ini dilengkapi dengan tajwid dan tartil sehingga dapat membantu Anda untuk belajar tajwid kode alfabet secara ringkas di setiap baris. Mushaf ini menggunakan rasm usmani dan sudah berstandar Indoesia.",
                        "198.000",
                      ),
                      MyApp().gambar(
                        'f.jpg',
                        'Pilar-Pilar Peradaban',
                        context,
                        "Sapiens Grafis Volume 1 membahas kemunculan Homo sapiens di Bumi dan bagaimana Sapiens berubah dari spesies biasa saja menjadi makhluk hidup dominan di dunia. Volume 2 ini membicarakan bagaimana cara pertanian, sebagai upaya Homo sapiens menopang populasinya yang makin membesar, malah memunculkan imperium, hak milik, kesenjangan, serta berbagai penderitaan akibat perang dan penyakit.",
                        "145.000",
                      )
                    ],
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage('assets/Gramedia.png'),
                    height: 160,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    teksLandingPage(
                        "Search for Books", 14.0, Colors.grey.shade600),
                    teksLandingPage(
                        "You haven\'t searched for any items yet...",
                        12.0,
                        Colors.grey.shade700),
                    teksLandingPage("Try now - we will help you!", 12.0,
                        Colors.grey.shade700),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Material(
        child: Container(
          margin: EdgeInsets.all(15.0),
          height: 50,
          child: ElevatedButton(
            child: Text(
              'Start Reading Book Now',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              Get.snackbar(
                "Selamat Datang Di Gramedia",
                "Buku adalah jembatan ilmu untuk menghubungkan pengetahuan dengan kehidupan nyata.",
                icon: Icon(Icons.book, color: Colors.blue),
                snackPosition: SnackPosition.TOP,
                duration: Duration(seconds: 6),
              );
              Get.to(
                MainPage(),
              );
            },
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
