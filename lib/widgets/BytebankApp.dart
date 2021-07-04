import 'package:flutter/material.dart';
import 'package:projeto1/widgets/FormularioTransferencia.dart';
import 'package:projeto1/widgets/ListasTransferencias.dart';

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormularioTransferencia(),
      // home: ListasTransferencias(),
    );
  }
}
