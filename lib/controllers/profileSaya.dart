import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import '../widgets/leftbar.dart';

class DashboardController extends StatefulWidget {
  const DashboardController({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _DashboardControllerState();
}

class _DashboardControllerState extends State<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Siakad"),
      ),
      drawer: LeftBarWidget(), //Drawer
      body: Container(
        child: const Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[Text("Ini Dashboard")],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
