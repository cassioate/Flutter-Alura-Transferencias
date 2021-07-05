import 'package:flutter/material.dart';

import 'package:projeto1/widgets/ListaTransferencia/ListasTransferencias.dart';

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        accentColor: Colors.blue[200],
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[500],
            textTheme: ButtonTextTheme.primary),
      ),
      home: ListasTransferencias(),
    );
  }
}
