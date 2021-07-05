import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  TextEditingController? controlador;
  String? rotulo;
  String? dica;
  IconData? icon;

  Editor({
    this.controlador,
    this.rotulo,
    this.dica,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(
          fontSize: 16.0,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
