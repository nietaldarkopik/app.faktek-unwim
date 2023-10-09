import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../widgets/leftbar.dart';
import '../themes/style.dart';

class JadwalMengajarController extends StatefulWidget {
  const JadwalMengajarController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _JadwalMengajarControllerState();
}

class _JadwalMengajarControllerState extends State<JadwalMengajarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jadwal Mengajar"),
        ),
        backgroundColor: kLight,
        drawer: LeftBarWidget(), //Drawer
        body: 
          Container(
            //margin: EdgeInsetsDirectional.all(10),
            padding: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(color: kWhite,border: Border.all(color: kWhite, width: 1)),
            //color: Colors.amberAccent,
            constraints: const BoxConstraints.expand(), // Membuat kotak mengisi ruang yang tersedia
            child: ListView(
              children: <Widget>[
                Text("Jadwal Mengajar Dosen",style: text1, textAlign: TextAlign.center,),
                Container(
                  decoration: BoxDecoration(color: kGray100, borderRadius: BorderRadius.all(Radius.circular(10)), border: Border.all(color: kDark)),
                  padding: EdgeInsetsDirectional.all(kPadding16),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    textDirection: TextDirection.ltr,
                    children: <Widget> [
                      Text('Program studi', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Semester', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Kode', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Mata Kuliah', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('SKS', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Hari', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Jam Mulai', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Jam Selesai', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Ruangan', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Kelas', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Paket', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Jumlah Mahasiswa', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Keterangan', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('Zoom', textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                )
              ],
            ),
          )
      );
  }
}
