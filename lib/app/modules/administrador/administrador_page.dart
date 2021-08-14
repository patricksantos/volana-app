import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/app/modules/administrador/administrador_store.dart';
import 'package:flutter/material.dart';

class AdministradorPage extends StatefulWidget {
  final String title;
  const AdministradorPage({Key? key, this.title = 'AdministradorPage'}) : super(key: key);
  @override
  AdministradorPageState createState() => AdministradorPageState();
}
class AdministradorPageState extends State<AdministradorPage> {
  final AdministradorStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}