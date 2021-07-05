import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  void onPressed() {
    print('teste');
  }

  var child;

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
          ElevatedButton(onPressed: onPressed, child: Text('Confirmar'))
        ],
      ),
    );
    ;
  }
}
