import 'package:flutter/material.dart';
import 'package:projeto1/model/Transferencia.dart';
import 'package:projeto1/widgets/FormularioTransferencia/Editor.dart';

class ContaValorBotao extends StatelessWidget {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  int? _numeroConta = 0;
  double? _valor = 0;

  void _criarTrasnferencia(context) {
    _numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    _valor = double.tryParse(_controladorCampoValor.text);
    if (_numeroConta != null && _valor != null) {
      Transferencia _transferenciaCriada =
          Transferencia(_valor!, _numeroConta!);
      debugPrint("Criando Transferencia");
      Navigator.pop(context, _transferenciaCriada);
      debugPrint("Trasnferencia criada");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Editor(
            controlador: _controladorCampoNumeroConta,
            rotulo: "Numero da conta",
            dica: "0000"),
        Editor(
            controlador: _controladorCampoValor,
            rotulo: "Valor",
            dica: "0000",
            icon: Icons.monetization_on),
        ElevatedButton(
          onPressed: () => _criarTrasnferencia(context),
          child: Text('Confirmar'),
        )
      ],
    );
  }
}
