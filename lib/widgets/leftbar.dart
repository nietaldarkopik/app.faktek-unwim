import 'package:faktekapp/controllers/dashboard.dart';
import 'package:faktekapp/controllers/jadwalMengajar.dart';
import 'package:faktekapp/controllers/presensiMahasiswa.dart';
import 'package:faktekapp/main.dart';
import 'package:flutter/material.dart';

class LeftBarWidget extends StatelessWidget {
  const LeftBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 26, 104, 192),
            ), //BoxDecoration
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 26, 104, 192)),
              accountName: Text(
                "Abhishek Mishra",
                style: TextStyle(fontSize: 18),
              ),
              accountEmail: Text("abhishekm977@gmail.com"),
              currentAccountPictureSize: Size.square(50),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 245, 172, 13),
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ), //Text
              ), //circleAvatar
            ), //UserAccountDrawerHeader
          ), //DrawerHeader
          ListTile(
            leading: const Icon(Icons.home_filled),
            title: const Text(' Beranda '),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const  DashboardController(),
              ));
            },
          ),
          ListTile(
            leading: const Icon(Icons.schedule),
            title: const Text(' Jadwal Mengajar '),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const JadwalMengajarController()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.check_box_rounded),
            title: const Text(' Presensi Mahasiswa '),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const PresensiMahasiswaController()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.calendar_month),
            title: const Text(' Jadwal Ujian '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_task),
            title: const Text(' Presensi Ujian '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.article_outlined),
            title: const Text(' Daftar Nilai '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text(' Perwalian '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.person_2),
            title: const Text(' Profil Saya '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const  MyApp(),
              ));
            },
          ),
        ],
      ),
    );
  }
}
