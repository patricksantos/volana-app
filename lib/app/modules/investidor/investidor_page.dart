import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/app/modules/investidor/investidor_store.dart';
import 'package:flutter/material.dart';

class InvestidorPage extends StatefulWidget {
  final String title;
  const InvestidorPage({Key? key, this.title = 'InvestidorPage'}) : super(key: key);
  @override
  InvestidorPageState createState() => InvestidorPageState();
}
class InvestidorPageState extends State<InvestidorPage> {
  final InvestidorStore store = Modular.get();

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