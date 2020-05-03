import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/componentes/appBar.dart';
import 'package:second_app/componentes/botoesHome.dart';
import 'package:second_app/componentes/drawer.dart';
import 'package:second_app/telas/cadastro.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nossoAppBar("Aplicativo Estrutura Inicial"),
      drawer: nossoDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nossoBotao("Criar", Colors.green, context),
          nossoBotao("Ler", Colors.lightBlueAccent, context),
          nossoBotao("Mudar", Colors.orange, context),
          nossoBotao("Deletar", Colors.red, context),
        ],
      ),
    );
  }
}
