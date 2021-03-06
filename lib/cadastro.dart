import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_p1/profissionais.dart';
import 'model/Item.dart';



class Cadastro extends StatelessWidget {
  static String tag = '/pagina3';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Profissionais Liberais"),
        backgroundColor: Colors.grey,
      ),
      body: ListView2(),
    );
  }
}

class ListView2 extends StatefulWidget {
  @override
  _ListView2State createState() => _ListView2State();
}

class _ListView2State extends State<ListView2> {
  final db = Firestore.instance;
  final String colecao = "cadastro";

  List<Item> lista = List();

  TextEditingController txtProfissional = new TextEditingController();
  TextEditingController txtArea = new TextEditingController();

  Widget _itemLista(context, index) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      height: MediaQuery.of(context).size.height * 0.35,
      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
      child: Card(
        color: Colors.grey,
        child: Column(
          children: <Widget>[
            Text(
              lista[index].profissional,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              lista[index].area,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 4,
                child: TextField(
                  controller: txtProfissional,
                  decoration: InputDecoration(
                      labelText: "Profissional",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1))),
                ),
              ),
              Flexible(
                flex: 4,
                child: TextField(
                  controller: txtArea,
                  decoration: InputDecoration(
                      labelText: "Área de Atuação",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1))),
                ),
              ),
              
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: lista.length,
              itemBuilder: _itemLista,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            child: Text("Próxima"),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profissionais()));
            },
          ),
          SizedBox(
            height: 5,
          ),
          RaisedButton(
            child: Text("Voltar"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
