import 'package:flutter/material.dart';
import 'package:projeto_p1/page_login.dart';
import 'package:projeto_p1/profissionais.dart';
import 'package:projeto_p1/contato.dart';
import 'package:projeto_p1/descricao.dart';
import 'package:projeto_p1/cadastro.dart';




class MenuApp extends StatelessWidget {
  static BuildContext scaffoldContext;
  static String tag = 'menu';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Menu do Aplicativo",
      home: MyStatefulWidget(),
      
    );
     
  }
}
 

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {


int _selectedIndex = 0;
int currItem = 0;
static final pages = [
    Cadastro.tag,
    Profissionais.tag,
    Contato.tag,
    Descricao.tag,    
    LoginPage.tag
  ];

 
 
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Cadastro de Profissionais',
      style: optionStyle,
    ),
    Text(
      'Profissionais Cadastrados',
      style: optionStyle,
    ),
    Text(
      'Contato: Fale Conosco',
      style: optionStyle,
    ),
    Text(
      'Descrição do Aplicativo',
      style: optionStyle,
    ),
    Text(
      'Sair',
      style: optionStyle,
    ),
  ];

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu do Aplicativo'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            title: Text('Cadastro'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('Profissionais Cadastrados'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            title: Text('Contato'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            title: Text('Descrição'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            title: Text('Sair'),
          ),  
        ],
        
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        
        
                
        onTap: (int i){
        currItem = i;
        Navigator.of(context).pushNamed(pages[i]);
        }
      ),

      
      
    );
  }
  
}





