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
  final List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Jadwal Mengajar"),
        ),
        backgroundColor: kLight,
        drawer: LeftBarWidget(), //Drawer
        body: Container(
          //margin: EdgeInsetsDirectional.all(10),
          padding: EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
              color: kWhite, border: Border.all(color: kWhite, width: 1)),
          //color: Colors.amberAccent,
          constraints: const BoxConstraints
              .expand(), // Membuat kotak mengisi ruang yang tersedia
          child: ListView(
            children: <Widget>[
              Text(
                "Jadwal Mengajar Dosen",
                style: text1,
                textAlign: TextAlign.center,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: kGray100,
                    //borderRadius: BorderRadius.all(Radius.circular(10)),
                    //border: Border.all(color: kDark)
                  ),
                  padding: EdgeInsetsDirectional.all(kPadding4),
                  margin: EdgeInsets.only(top: 20),
                  child: Column(children: [
                    ExpansionTile(
                      title: Text('Senin'),
                      tilePadding: EdgeInsetsDirectional.all(kPadding4),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 4),
                          child: ExpansionTile(
                            childrenPadding:
                                EdgeInsetsDirectional.all(kPadding4),
                            title: Text('Mata Kuliah'),
                            tilePadding: EdgeInsetsDirectional.all(kPadding8),
                            children: <Widget>[
                              Card(
                                elevation: 50,
                                color: kGray400,
                                child: Container(
                                  //decoration: BoxDecoration(
                                  //color: kGray100,
                                  //borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //border: Border.all(color: kGray500)
                                  //    ),
                                  padding: EdgeInsetsDirectional.all(kPadding4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    textDirection: TextDirection.ltr,
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Program studi")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Semester")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Kode")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Mata Kuliah")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("SKS")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Hari")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Jam Mulai")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Jam Selesai")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Ruangan")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Kelas")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Paket")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Jumlah Mahasiswa")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Keterangan")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Zoom")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("sd fasd fdsfsda fsdafsdf sd fsd fsad fdas dsafds fdas fsd fsd fdas f"),],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text('Senin'),
                      tilePadding: EdgeInsetsDirectional.all(kPadding4),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 4, left: 4, right: 4, bottom: 4),
                          child: ExpansionTile(
                            childrenPadding:
                                EdgeInsetsDirectional.all(kPadding4),
                            title: Text('Mata Kuliah'),
                            tilePadding: EdgeInsetsDirectional.all(kPadding8),
                            children: <Widget>[
                              Card(
                                elevation: 50,
                                color: kGray400,
                                child: Container(
                                  //decoration: BoxDecoration(
                                  //color: kGray100,
                                  //borderRadius: BorderRadius.all(Radius.circular(10)),
                                  //border: Border.all(color: kGray500)
                                  //    ),
                                  padding: EdgeInsetsDirectional.all(kPadding4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    textDirection: TextDirection.ltr,
                                    children: <Widget>[
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Program studi")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Semester")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Kode")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Mata Kuliah")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("SKS")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Hari")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Jam Mulai")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Jam Selesai")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Ruangan")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Kelas")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Paket")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Jumlah Mahasiswa")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [
                                                    Text("Keterangan")
                                                  ],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 45, // 15%
                                              child: Container(
                                                color: kGray400,
                                                alignment:
                                                    Alignment.centerRight,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("Zoom")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: Column(
                                                  children: [Text("ok")],
                                                ),
                                              ))
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ])),
            ],
          ),
        ));
  }
}
