import 'package:flutter/material.dart';

import 'package:projeto1/model/Transferencia.dart';
import 'package:projeto1/widgets/FormularioTransferencia/FormularioTransferencia.dart';
import 'package:projeto1/widgets/ItemTransferencia/ItemTransferencia.dart';

class ListasTransferencias extends StatefulWidget {
  List<Transferencia?> _transferencias = [];
  @override
  ListasTransferencias_State createState() => ListasTransferencias_State();
}

class ListasTransferencias_State extends State<ListasTransferencias> {
  _mudarPagina(context) {
    Future<Transferencia?> future = Navigator.push(context,
        MaterialPageRoute(builder: (context) => FormularioTransferencia()));
    debugPrint("Listas transferencias");
    future.then((value) => {
          debugPrint("Chegou no then do FUTURE"),
          debugPrint("$value"),
          if (value != null)
            {
              setState(() => widget._transferencias.add(value)),
              print('AQUI $widget._transferencias')
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferencias'),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice) {
          Transferencia _transferencia = widget._transferencias[indice]!;
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
