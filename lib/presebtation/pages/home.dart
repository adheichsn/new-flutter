import 'package:flutter/material.dart';
import 'package:posyandhu/data/models/pelayanan_models.dart';
import 'package:posyandhu/presebtation/widget/listlayanan.dart';
import 'package:posyandhu/presebtation/widget/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Definisikan daftar layananSurat di sini
  final List<Layanan> layananSurat = [
    Layanan(name: 'Surat Keterangan Tidak Mampu'),
    Layanan(name: 'Surat Pindah Domisili'),
    Layanan(name: 'Surat Keterangan Kematian'),
    Layanan(name: 'Surat Pengajuan Pembuatan'),
  ];

  final int _selectedIndex = 1; // Set default to Home

  void _onItemTapped(int index) {
    if (index == 0) {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const Inbox()));
    } else if (index == 1) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const Home()));
    } else if (index == 2) {
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const Profil()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const CircleAvatar(
                foregroundImage: AssetImage('assets/images/sopo.jpeg'),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dimas Rizki Suryana',
                    style: mediumWhiteTextStyle.copyWith(fontSize: 15),
                  ),
                  Text(
                    'Ajukan keluhan anda bersama kami',
                    style: regularwhitetext.copyWith(fontSize: 8),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 205, 249, 255),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.indigo,
                  ),
                ),
              ),
            )
          ],
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Text('Pelayanan Surat',
                  style: semiboldBlackTextStyle.copyWith(
                      fontSize: 12, color: darkblue)),
              const Divider(),
              const SizedBox(height: 8),
              //untuk atur dekorasi pelayanansurat, silahkan ke file list_pelayanansurat
              Listlayanan(layananSurat: layananSurat),
            ],
          ),
        ),
      ),
    );
  }
}
