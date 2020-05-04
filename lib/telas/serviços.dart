import 'package:flutter/material.dart';

class Homeph extends StatefulWidget {
  @override
  _HomephState createState() => _HomephState();
}

class _HomephState extends State<Homeph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Icon(Icons.refresh),
      appBar: AppBar(title: Text("Serviços do App Bar"),backgroundColor: Color(Colors.red),),
    );
  }
}