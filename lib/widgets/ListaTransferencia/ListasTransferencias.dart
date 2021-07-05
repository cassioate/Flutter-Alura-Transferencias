import 'package:flutter/material.dart';

import 'package:projeto1/model/Transferencia.dart';
import 'package:projeto1/widgets/FormularioTransferencia/FormularioTransferencia.dart';
import 'package:projeto1/widgets/ItemTransferencia/ItemTransferencia.dart';

class ListasTransferencias extends StatelessWidget {
  _mudarPagina(context) {
    Future<Transferencia?> future = Navigator.push(context,
        MaterialPageRoute(builder: (context) => FormularioTransferencia()));
    debugPrint("Listas transferencias");
    future.then((value) =>
        {debugPrint("Chegou no then do FUTURE"), debugPrint("$value")});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(300, 3000)),
          ItemTransferencia(Transferencia(1000, 5000)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _mudarPagina(context),
        child: Icon(Icons.add),
      ),
    );
  }
}
