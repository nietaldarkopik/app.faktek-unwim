import 'dart:developer';
import 'dart:io';

import 'package:faktekapp/controllers/dashboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'controllers/qrscanner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Siakad FTPA Unwim',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 0, 28, 88)),
        useMaterial3: false,
      ),
      home: const MyLoginPage(title: 'Login Siakad FTPA Unwim'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  int _counter = 0;

  void _do_login() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const DashboardController(),
    ));
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    //<Widget>_logoUnwim = Image.asset('assets/images/logo_unwim.png');
    //<Widget>_logoFTPA = Image.asset('assets/images/logo_ftpa.png');
    return Scaffold(
      //drawer: NavigationDrawer(children: [Text('dsatu')]),
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.primary,
        // Here we take the value from the MyLoginPage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title,
          style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        ),
      ),
      body: Container(
        color: Colors.amber[900],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: AlignmentDirectional.center,
                //height: 300,
                padding: EdgeInsets.all(10),
                color: Colors.white60,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/logo_unwim.png',
                          width: 80,
                        ),
                        Image.asset(
                          'assets/images/logo_ftpa.png',
                          width: 80,
                        ),
                      ],
                    ),
                    Text(
                      "Silahkan Login",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Form(
                      //key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Username'),
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              setState(() {
                                //email = value;
                              });
                            },
                            validator: (value) {
                              /*  if (value.isEmpty || !value.contains('@')) { 
                        return 'Invalid email!'; 
                      }  */
                            },
                          ),
                          // this is where the
                          // input goes
                          TextFormField(
                            decoration: InputDecoration(labelText: 'Password'),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            validator: (value) {
                              /* if (value.isEmpty && value.length < 7) { 
                        return 'Invalid password!'; 
                      } */
                            },
                            onFieldSubmitted: (value) {
                              setState(() {
                                //password = value;
                              });
                            },
                          ),
                          MaterialButton(
                            onPressed: _do_login,
                            child: Text("Login",
                                style: TextStyle(color: Colors.white)),
                            color: Colors.blue[900],
                          ),
                          /*  Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const QRViewExample(),
                                ));
                              },
                              child: const Text('qrView'),
                            ),
                          ), */
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
