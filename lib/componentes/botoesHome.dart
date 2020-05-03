import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:second_app/telas/cadastro.dart';

Widget nossoBotao(String titulo, Color cor, BuildContext context) {

  return Column(
    children: <Widget>[
      CupertinoButton(
        child: Text(
          titulo,
          style: TextStyle(color: Colors.black),
        ),

        color: cor,
        onPressed: () {
          String acao = titulo.toUpperCase();

          switch (acao) {
            case "CRIAR":
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cadastro()));
              break;

            case "PESQUISAR":
              print("Apertou no botão pesquisar");
              break;

            case "MUDAR":
              print("Apertou no botão mudar");
              break;

            case "DELETAR":
              print("Apertou no botão deletar");
              break;

            default:
          }
        },
      ),
      Divider(height: 50)
    ],
  );
}
