import 'package:flutter/material.dart';
import 'package:projeto_p1/page_login.dart';
import 'package:projeto_p1/menu.dart';
import 'package:projeto_p1/cadastro.dart';
import 'package:projeto_p1/profissionais.dart';
import 'package:projeto_p1/contato.dart';
import 'package:projeto_p1/descricao.dart';




void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portal do Setor',
        

        
        initialRoute: '/pagina1',
        routes: {
          '/pagina1': (context) => LoginPage(),
          '/pagina2': (context) => Menuapp(),
          '/pagina3': (context) => Cadastro(),
          '/pagina4': (context) => Profissionais(),          
          '/pagina5': (context) => Contato(),
          '/pagina6': (context) => Descricao()
          
        }),
  );  
}

