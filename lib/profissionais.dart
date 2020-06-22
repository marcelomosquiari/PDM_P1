import 'package:flutter/material.dart';
import 'package:projeto_p1/contato.dart';


class Profissionais extends StatelessWidget {
  static String tag = '/pagina4';
  
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ache o profissional adequado"),
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
        ),
        body: ListView1());
      
    
  }
}


class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        scrollDirection: Axis.vertical,
        reverse: false,
        children: <Widget>[
          Icon(
            Icons.perm_identity,
            size: 60,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Profissionais Cadastrados",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          ExpansionTile(
            leading: Icon(Icons.person_outline),
            title: Text("Eduardo Gomes", style: TextStyle(fontSize: 22)),
            subtitle: Text("Ortodontista"),
            trailing: Icon(Icons.edit),
            children: <Widget>[
              Text("Endereço: Rua Amador Bueno, 1600"),
            
          ],
          ),
          ExpansionTile(
            leading: Icon(Icons.person_outline),
            title: Text("Com'Art Comunicações", style: TextStyle(fontSize: 22)),
            subtitle: Text(
                "Assessoria de Imprensa"),
            trailing: Icon(Icons.edit),
            children: <Widget>[
              Text("email: comart@comart.com.br"),
           
          ],
          ),
          ExpansionTile(
            leading: Icon(Icons.person_outline),
            title: Text("Marcelo Mosquiari", style: TextStyle(fontSize: 22)),
            
            subtitle: Text("Cerimonialista"),
            trailing: Icon(Icons.edit),
            children: <Widget>[
              Text("Tel: 234-456"),
              
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.person_outline),
            title: Text("Fest Festa", style: TextStyle(fontSize: 22)),
            subtitle: Text("Artigos para festa"),
            trailing: Icon(Icons.edit),
            children: <Widget>[
              Text("Av. Leais Paulista, 880 - Tel: 3629-5963"),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.person_outline),
            title: Text("Estrela Dourada", style: TextStyle(fontSize: 22)),
            subtitle: Text("Buffet Infantil"),
            trailing: Icon(Icons.edit),
            children: <Widget>[
              Text("Tel: 3629-5963"),
           
              
          ],   
          ),
          
            Padding(padding: EdgeInsets.only(bottom: 40),), 

            RaisedButton(
              child: Text("Próxima"),
              onPressed: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                 Contato())
                );
              },
            ),
            
              SizedBox(height: 5,),
              
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
