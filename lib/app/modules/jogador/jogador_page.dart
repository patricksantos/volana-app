import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/app/modules/jogador/jogador_store.dart';
import 'package:flutter/material.dart';

class JogadorPage extends StatefulWidget {
  final String title;
  const JogadorPage({Key? key, this.title = 'JogadorPage'}) : super(key: key);
  @override
  JogadorPageState createState() => JogadorPageState();
}
class JogadorPageState extends State<JogadorPage> {
  final JogadorStore store = Modular.get();

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