import 'package:flutter/material.dart';

import 'package:projeto1/widgets/ListaTransferencia/ListasTransferencias.dart';

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListasTransferencias(),
    );
  }
}
