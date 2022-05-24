// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:posttest6_1915016048_muchlismardais/inputPage.dart';
import 'package:posttest6_1915016048_muchlismardais/landingPage.dart';
import 'package:posttest6_1915016048_muchlismardais/main.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        SystemNavigator.pop();
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Main Page | Muchlis", style: TextStyle(fontSize: 16.0)),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.orangeAccent, Colors.blue])),
          ),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 2, 159, 154),
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  children: <Widget>[
                    const UserAccountsDrawerHeader(
                      currentAccountPicture: CircleAvatar(
                        backgroundImage: AssetImage('assets/me.jpg'),
                      ),
                      accountName: Text(
                        'Muchlis Mardais',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      accountEmail: Text('uyizdofukizi@gmail.com'),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: ExactAssetImage("assets/sampul.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    ListTile(
                      leading: const Icon(Icons.home),
                      title: const Text(
                        'Landing Page',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandingPage(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      },
                    ),
                    ListTile(
                      leading: const Icon(Icons.edit),
                      title: const Text(
                        'Input Data',
                        style: TextStyle(fontSize: 14.0),
                      ),
                      onTap: () => Get.to(
                        InputDataPage(),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Divider(
                          height: 1,
                        ),
                        ListTile(
                          leading: const Icon(Icons.exit_to_app),
                          title: const Text(
                            'Quit',
                            style: TextStyle(fontSize: 14.0),
                          ),
                          onTap: () => SystemNavigator.pop(),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                MyApp().gambarHeader(),
                MyApp().teksHeader("Home Gramedia Digital"),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MyApp().gambar(
                          'a.jpg',
                          'Demon Slayer',
                          context,
                          "Bagaimana akhir dari pertarungan antara \"Iblis Penidur\" Enmu melawan Tanjiro yang melancarkan jurus pamungkas Hinokami Kagura `Hekira no Ten`!? Namun, tiba-tiba saja sosok baru muncul di hadapan Tanjiro! Enbashira Kyojuro Rengoku pun beraksi. Seperti apakah takdir yang terpampang di hadapan Tanjiro setelah mendengar kata-kata yang diucapkan orang hebat itu?",
                          "40.000"),
                    ),
                    Expanded(
                      child: MyApp().gambar(
                          'b.jpg',
                          'Jujutsu Kaisen',
                          context,
                          "Program pertukaran dengan Akademi Jujutsu Kyoto dimulai. Pihak yang duluan menyingkirkan jurei tingkat 2 di area pertandinganlah yang akan jadi pemenangnya. Todo yang gemar berkelahi segera menyerang pihak Tokyo! Saat Todo dan Itadori saling berhadapan, anak-anak Kyoto yang lain ikut mengepung Itadori dengan niat untuk membunuhnya...!?",
                          "40.000"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MyApp().gambar(
                          'c.jpg',
                          'Home Sweet Loan',
                          context,
                          "Empat orang yang berteman sejak SMA bekerja di perusahaan yang sama meski beda nasib. Di usia 31 tahun, mereka berburu rumah idaman yang minimal… nyerempet Jakarta. Kaluna, pegawai Bagian Umum, yang gajinya tak pernah menyentuh dua digit. Gadis ini kerja sampingan sebagai model bibir, bermimpi membeli rumah demi keluar dari situasi tiga kepala keluarga yang bertumpuk di bawah satu atap.",
                          "95.000"),
                    ),
                    Expanded(
                      child: MyApp().gambar(
                          'd.jpg',
                          'Pagi di Amerika',
                          context,
                          "Ketika peluru memasuki jantungnya, gadis itu bersandar ke sebuah loker dan menyaksikan Kyle menembakkan pistol itu lagi dan lagi. Ketika gadis itu meluncur perlahan ke lantai, gadis itu mendapatkan pencerahan seakan sebuah vista, seluruh dunia terpandang dari sebuah puncak gunung. Surga dan dunia terkandung dalam sejarah pikiran : kami sungguh tak cukup mengasihi kyle, dan kyle telah menderita karena nya.",
                          "9.000"),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MyApp().gambar(
                          'e.jpg',
                          'Al-Qur\'an Cordoba',
                          context,
                          "Mushaf “Al-Qur'an Qordoba” ini dilengkapi dengan tajwid dan tartil sehingga dapat membantu Anda untuk belajar tajwid kode alfabet secara ringkas di setiap baris. Mushaf ini menggunakan rasm usmani dan sudah berstandar Indoesia.",
                          "198.000"),
                    ),
                    Expanded(
                        child: MyApp().gambar(
                            'f.jpg',
                            'Pilar-Pilar Peradaban',
                            context,
                            "Sapiens Grafis Volume 1 membahas kemunculan Homo sapiens di Bumi dan bagaimana Sapiens berubah dari spesies biasa saja menjadi makhluk hidup dominan di dunia. Volume 2 ini membicarakan bagaimana cara pertanian, sebagai upaya Homo sapiens menopang populasinya yang makin membesar, malah memunculkan imperium, hak milik, kesenjangan, serta berbagai penderitaan akibat perang dan penyakit.",
                            "145.000")),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
