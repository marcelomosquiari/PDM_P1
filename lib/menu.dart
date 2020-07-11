import 'package:flutter/material.dart';


class Menuapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu do Aplicativo"),
        backgroundColor: Colors.grey,
        
        
        automaticallyImplyLeading: false,
        
      ),
      
      body: Container(
        
        
       
        
        
        child: ListView(    
                
          
          
        children: <Widget>[
          DrawerHeader(
            child: Image(image: AssetImage('assets/imagens/app-logo.png')),
            
              
            ),
            
          ListTile(
            leading: Icon(Icons.person_add),
            title: Text('Cadastro de Profissionais'),
            onTap: () => {Navigator.of(context).pushNamed('/pagina3')},
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Lista de Profissionais Cadastrados'),
            onTap: () => {Navigator.of(context).pushNamed('/pagina4')},
          ),
          ListTile(
            leading: Icon(Icons.contact_mail),
            title: Text('Contato: Fale Conosco'),
            onTap: () => {Navigator.of(context).pushNamed('/pagina5')},
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Descrição do Aplicativo'),
            onTap: () => {Navigator.of(context).pushNamed('/pagina6')},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Sair'),
            onTap: () => {Navigator.of(context).pushNamed('/pagina1')},
          ),
        ],
      ),
    ), 
    );
  }        
 }