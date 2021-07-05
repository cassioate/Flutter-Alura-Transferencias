import 'package:flutter/material.dart';

import 'package:projeto1/model/Transferencia.dart';
import 'package:projeto1/widgets/FormularioTransferencia/FormularioTransferencia.dart';
import 'package:projeto1/widgets/ItemTransferencia/ItemTransferencia.dart';

class ListasTransferencias extends StatelessWidget {
  List<Transferencia?> _transferencias = [];

  _mudarPagina(context) {
    Future<Transferencia?> future = Navigator.push(context,
        MaterialPageRoute(builder: (context) => FormularioTransferencia()));
    debugPrint("Listas transferencias");
    future.then((value) => {
          debugPrint("Chegou no then do FUTURE"),
          debugPrint("$value"),
          if (value != null) {_transferencias.add(value)}
        });
  }

  @override
  Widget build(BuildContext context) {
    _transferencias.add(Transferencia(300, 200));
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: ListView.builder(
        itemCount: _transferencias.length,
        itemBuilder: (context, indice) {
          Transferencia _transferencia = _transferencias[indice]!;
          return ItemTransferencia(_transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _mudarPagina(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
