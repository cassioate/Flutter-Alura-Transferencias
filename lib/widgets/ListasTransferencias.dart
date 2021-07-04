import 'package:flutter/material.dart';
import 'package:projeto1/model/Transferencia.dart';
import 'package:projeto1/widgets/ItemTransferencia.dart';

class ListasTransferencias extends StatelessWidget {
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
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
