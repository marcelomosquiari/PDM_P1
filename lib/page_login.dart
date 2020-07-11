import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'model/Portal.dart';

class LoginPage extends StatefulWidget {
  static String tag = '/pagina1';
  _LoginPageState createState() => _LoginPageState();

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
                width: 128,
                height: 128,
                child: Image.asset("assets/imagens/logo.png")),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              child: SizedBox.expand(
                child: RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        child: Image.asset("assets/imagens/icon.png"),
                        height: 28,
                        width: 28,
                      ),
                    ],
                  ),
                  onPressed: () => {
                    Navigator.pushNamed(context, '/pagina2'),
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  //Conexão Fluter+Firebase
  final db = Firestore.instance;
  final String colecao = "usuarios";

  //Lista dinâmica para manipulação dos dados
  List<Portal> lista = List();

  //Stream para "ouvir" o Firebase
  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

    //cancelar o listen, caso a coleção esteja vazia.
    listen?.cancel();

    //retornar dados da coleção e inserir na lista dinâmica
    listen = db.collection(colecao).snapshots().listen((res) {
      setState(() {
        lista = res.documents
            .map((doc) => Portal.fromMap(doc.data, doc.documentID))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portal do Setor"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: StreamBuilder<QuerySnapshot>(

          //fonte de dados
          stream: db.collection(colecao).snapshots(),

          //exibição dos dados
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          lista[index].email,
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Text(lista[index].senha.toStringAsFixed(2),
                            style: TextStyle(fontSize: 16)),
                        trailing: IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              db
                                  .collection(colecao)
                                  .document(lista[index].id)
                                  .delete();
                            }),
                        onTap: () {
                          Navigator.pushNamed(context, "/pagina2",
                              arguments: lista[index].id);
                        },
                      );
                    });
            }
          }),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey,
        elevation: 0,
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, "/pagina2", arguments: null);
        },
      ),
      backgroundColor: Colors.grey[50],
    );
    
  }     
}

