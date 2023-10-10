import 'dart:developer';
import 'dart:io';

import 'package:faktekapp/themes/style.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../widgets/leftbar.dart';

class PresensiMahasiswaController extends StatefulWidget {
  const PresensiMahasiswaController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PresensiMahasiswaControllerState();
}

class _PresensiMahasiswaControllerState
    extends State<PresensiMahasiswaController> {
  String selectedCity = 'All';
  double minAge = 0;
  double maxAge = 100;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterFormPresensiMahasiswa(),
    );
  }
}

class FilterFormPresensiMahasiswa extends StatefulWidget {
  @override
  _FilterFormPresensiMahasiswaState createState() =>
      _FilterFormPresensiMahasiswaState();
}

class _FilterFormPresensiMahasiswaState
    extends State<FilterFormPresensiMahasiswa> {
  String selectedCity = 'All';
  double minAge = 0;
  double maxAge = 100;

  _showFilterDialog(BuildContext context) {
    showDialog(
      context: context,
      useRootNavigator: true,
      builder: (BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Filter Presensi Mahasiswa'),
          ),
          body: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                flex: 100,
                fit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsetsDirectional.all(8),
                  padding: const EdgeInsets.all(8),
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Program Studi',
                        style: text3,
                      ),
                      DropdownButton<String>(
                        isExpanded: true,
                        value: selectedCity,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'New York',
                          'Los Angeles',
                          'Chicago',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Tahun Ajaran',
                        style: text3,
                      ),
                      DropdownButton<String>(
                        isExpanded: true,
                        value: selectedCity,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'New York',
                          'Los Angeles',
                          'Chicago',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Semester',
                        style: text3,
                      ),
                      DropdownButton<String>(
                        isExpanded: true,
                        value: selectedCity,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'New York',
                          'Los Angeles',
                          'Chicago',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Kelas',
                        style: text3,
                      ),
                      DropdownButton<String>(
                        isExpanded: true,
                        value: selectedCity,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'New York',
                          'Los Angeles',
                          'Chicago',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Paket',
                        style: text3,
                      ),
                      DropdownButton<String>(
                        isExpanded: true,
                        value: selectedCity,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'New York',
                          'Los Angeles',
                          'Chicago',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16.0),
                      const Text(
                        'Status',
                        style: text3,
                      ),
                      DropdownButton<String>(
                        isExpanded: true,
                        value: selectedCity,
                        onChanged: (newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: <String>[
                          'All',
                          'New York',
                          'Los Angeles',
                          'Chicago',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              // Lakukan aksi pencarian atau filter berdasarkan kriteria yang dipilih
              print('Selected City: $selectedCity');
              print('Minimum Age: $minAge');
              print('Maximum Age: $maxAge');
              Navigator.of(context).pop();
            },
            label: const Text('Filter Data'),
            icon: const Icon(Icons.search),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("DashboardController Siakad"),
          /*  bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.music_note)),
            Tab(icon: Icon(Icons.music_video)),
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(icon: Icon(Icons.grade)),
            Tab(icon: Icon(Icons.email)),
          ],
        ), */
        ),
        drawer: const LeftBarWidget(), //Drawer
        body: Container(
          //margin: EdgeInsetsDirectional.all(10),
          padding: const EdgeInsetsDirectional.all(10),
          decoration: BoxDecoration(
              color: kWhite, border: Border.all(color: kWhite, width: 1)),
          //color: Colors.amberAccent,
          constraints: const BoxConstraints
              .expand(), // Membuat kotak mengisi ruang yang tersedia
          child: ListView(
            children: <Widget>[
              const Text(
                "Presensi Mahasiswa",
                style: text1,
                textAlign: TextAlign.center,
              ),
              Container(
                  decoration: const BoxDecoration(
                    color: kGray100,
                    //borderRadius: BorderRadius.all(Radius.circular(10)),
                    //border: Border.all(color: kDark)
                  ),
                  padding: const EdgeInsetsDirectional.all(kPadding4),
                  margin: const EdgeInsets.only(top: 20),
                  child: Column(children: [
                    ExpansionTile(
                      title: const Text('Senin'),
                      tilePadding: const EdgeInsetsDirectional.all(kPadding4),
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 4, left: 4, right: 4, bottom: 4),
                          child: ExpansionTile(
                            childrenPadding:
                                const EdgeInsetsDirectional.all(kPadding4),
                            title: const Text('Mata Kuliah'),
                            tilePadding:
                                const EdgeInsetsDirectional.all(kPadding8),
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
                                  padding: const EdgeInsetsDirectional.all(
                                      kPadding4),
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Semester")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Kode")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("SKS")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Hari")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Jam Mulai")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Ruangan")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Kelas")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Paket")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
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
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text("Zoom")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 10, // 60%
                                              child: Container(
                                                //color: kGray200,
                                                alignment: Alignment.center,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        end: kPadding4,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [Text(":")],
                                                ),
                                              )),
                                          Flexible(
                                              flex: 45, // 25%
                                              child: Container(
                                                color: kGray100,
                                                alignment: Alignment.centerLeft,
                                                padding:
                                                    const EdgeInsetsDirectional
                                                        .only(
                                                        start: kPadding8,
                                                        top: kPadding4,
                                                        bottom: kPadding4),
                                                child: const Column(
                                                  children: [
                                                    Text(
                                                        "sd fasd fdsfsda fsdafsdf sd fsd fsad fdas dsafds fdas fsd fsd fdas f"),
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                              flex: 100, // 25%
                                              child: Container(
                                                  color: kGray100,
                                                  alignment: Alignment.center,
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .only(
                                                          start: kPadding8,
                                                          top: kPadding4,
                                                          bottom: kPadding4),
                                                  child: Column(children: [
                                                    ElevatedButton(
                                                      onPressed: () {
                                                        // Menampilkan form filter dalam popup ketika tombol ditekan

                                                        Navigator.of(context).push(
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const ShowPresensiPage()));
                                                      },
                                                      child: const Text(
                                                          'Mulai Presensi Mahasiswa'),
                                                    ),
                                                  ])))
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
              ElevatedButton(
                onPressed: () {
                  // Menampilkan form filter dalam popup ketika tombol ditekan
                  _showFilterDialog(context);
                },
                child: const Text('Open Filter Form'),
              ),
            ],
          ),
        ));
  }
}

class ShowPresensiPage extends StatefulWidget {
  const ShowPresensiPage({super.key});

  @override
  State<ShowPresensiPage> createState() => _ShowPresensiPageState();
}

class _ShowPresensiPageState extends State<ShowPresensiPage> {
  int selectedRadio = 0;
  bool isButtonPressed = false; // Menyimpan status tombol ditekan atau tidak

  // Metode untuk mengubah nilai radio yang dipilih
  void setSelectedRadio(int value) {
    setState(() {
      selectedRadio = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mulai Presensi Mahasiswa"),
        ),
        drawer: const LeftBarWidget(), //Drawer
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      //color: kWhite,
                      margin: const EdgeInsetsDirectional.all(kPadding8),
                      padding: const EdgeInsetsDirectional.all(kPadding8),
                      child: const Column(
                        children: [
                          Text(
                            "Daftar Kehadiran Mahasiswa dan Dosen",
                            style: text2,
                          ),
                          Text(
                            "Tahun Ajaran 2021/2020 Ganjil Paralel Siang",
                            style: text2,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 50,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama Dosen'),
                                    Text('...........'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text('Program Studi'),
                                    Text('...........'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text('Matakuliah/SKS'),
                                    Text('...........'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text('Semester/Tahun'),
                                    Text('...........'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text('Kelas/Paket'),
                                    Text('...........'),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 50,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Pertemuan Ke'),
                                      Text('...........'),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text('Ruang'),
                                      Text('...........'),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text('Tanggal'),
                                      Text('...........'),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text('Waktu'),
                                      Text('...........'),
                                      SizedBox(
                                        height: 16,
                                      ),
                                    ]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          //color: kWhite,
                          margin: const EdgeInsetsDirectional.all(kPadding8),
                          padding: const EdgeInsetsDirectional.all(kPadding8),
                          child: Column(
                            children: [
                              Text(
                                "Daftar mahasiswa",
                                style: text2,
                              ),
                              Divider(),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                              Column(
                                children: [
                                  ListTile(
                                    leading: const Icon(Icons
                                        .account_circle), // Ikon di sebelah kiri
                                    title: const Text('John Doe'), // Judul utama
                                    subtitle: const Text(
                                        'john.doe@example.com'), // Subjudul
                                    trailing: const Icon(Icons
                                        .arrow_forward), // Ikon di sebelah kanan
                                    onTap: () {
                                      // Aksi yang terjadi saat ListTile diklik
                                      print('Tapped on John Doe');
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        child: Text("Hadir"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Ijin"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Sakit"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kGray500)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                      ElevatedButton(
                                        child: Text("Alpha"),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateColor.resolveWith(
                                                    (states) => kBlue)),
                                        onPressed: () {
                                          // Aksi yang terjadi saat tombol pencarian ditekan
                                          print('Tombol pencarian ditekan');
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
