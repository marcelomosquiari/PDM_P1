import 'package:flutter/material.dart';



class Cadastro extends StatelessWidget {
  static String tag = 'cadastro';
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cadastro de Profissionais Liberais"),
          backgroundColor: Colors.grey,
        ),
        body: ListView2(),
      ),
    );
  }
}

class Item {
  var icone;
  String titulo;
  String subtitulo;

  Item(this.icone, this.titulo, this.subtitulo);
}

class ListView2 extends StatefulWidget {
  @override
  _ListView2State createState() => _ListView2State();
}

class _ListView2State extends State<ListView2> {
  
  List<Item> lista = [];

  
  TextEditingController txtTitulo = new TextEditingController();
  TextEditingController txtSubtitulo = new TextEditingController();

  


  
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
              lista[index].titulo,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              lista[index].subtitulo,
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
                  controller: txtTitulo,
                  decoration: InputDecoration(
                      labelText: "Profissional",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1))),
                ),
              ),
              Flexible(
                flex: 4,
                child: TextField(
                  controller: txtSubtitulo,
                  decoration: InputDecoration(
                      labelText: "Área de Atuação",
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 0.1))),
                ),
              ),
              Flexible(
                flex: 2,
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {

                     setState(() {
                       lista.add(Item(
                         Icons.person_outline,
                         txtTitulo.text,
                         txtSubtitulo.text
                        )
                       );
                     }); 

                  },
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: lista.length, 
              itemBuilder:
                  _itemLista,
            ),
            
            
          ),
          SizedBox(height: 10,),

            RaisedButton(
              child: Text("Próxima"),
              onPressed: () {

                
                Navigator.pushNamed(context, '/pagina4');



              },
            ),

            SizedBox(height: 10,),

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
  
  
  
  
  


/*import 'package:flutter/material.dart';

class TerceiraPagina extends StatelessWidget {
  static String tag = 'terceira_pagina';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Lista de Serviços Cadastrados"), 
         backgroundColor: Colors.grey,   
          automaticallyImplyLeading: false,    
     ),
    
     body: Center(
        child: ListView(

           

          children: <Widget>[

            Padding(padding: EdgeInsets.only(top: 450),), 

              RaisedButton(        
                child: Text("Próxima"),
                onPressed: () {
                
                Navigator.pushNamed(context, '/pagina4');
              },
            ),
              
              SizedBox(height: 20,),
              
              RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

          ], 
     
       ),
     ),
    );
 }*/
