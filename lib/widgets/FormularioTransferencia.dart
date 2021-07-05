import 'package:flutter/material.dart';
import 'package:projeto1/model/Transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  int? _numeroConta = 0;
  double? _valor = 0;

  void onPressed() {
    _numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    _valor = double.tryParse(_controladorCampoValor.text);
    if (_numeroConta != null && _valor != null) {
      Transferencia _transferenciaCriada =
          Transferencia(_valor!, _numeroConta!);
      print(_transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferencia'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: _controladorCampoNumeroConta,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                labelText: "Número da conta",
                hintText: '0000',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              controller: _controladorCampoValor,
              style: TextStyle(
                fontSize: 24.0,
              ),
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on),
                labelText: "Valor",
                hintText: '0000',
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Confirmar'),
          )
        ],
      ),
    );
  }
}
