import 'package:flutter/material.dart';
import 'widgets/ListasTransferencias.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Transferencias'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          body: ListasTransferencias(),
        ),
      ),
    );
