import 'package:flutter/material.dart';

import 'package:projeto1/widgets/FormularioTransferencia/ContaValorBotao.dart';

class FormularioTransferencia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferencia'),
      ),
      body: ContaValorBotao(),
    );
  }
}
