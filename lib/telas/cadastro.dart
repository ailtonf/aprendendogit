import 'package:flutter/material.dart';
import 'package:second_app/componentes/appBar.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: nossoAppBar("Cadastro"),
      body: MyCustomForm(),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _controllerNome = TextEditingController();
  final _controllerIdade = TextEditingController();
  final _controllerHobby = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _controllerNome,
              decoration: InputDecoration(labelText: 'Coloque seu nome'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Não vai fugir sem escrever seu nome.';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _controllerIdade,
              decoration: InputDecoration(labelText: 'Coloque sua idade'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Coloca sua idade logo.';
                }
                return null;
              },
            ),
            
            TextFormField(
              controller: _controllerHobby,
              decoration: InputDecoration(labelText: 'Qual é o seu Hobby?'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Não seja timido :)';
                }
                return null;
              },
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                color: Colors.green,
                onPressed: () {
                  // Validando
                  if (_formKey.currentState.validate()) {
                    // If the form is valid, display a Snackbar.
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Olá " + _controllerNome.text + ", estamos salvando os dados.")));
                  }
                },

                child: Text('Cadastrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
