import 'package:flutter/material.dart';



class Descricao extends StatelessWidget {
  static String tag = 'descricao';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Descrição do Aplicativo"),
        backgroundColor: Colors.grey,
        
        
        automaticallyImplyLeading: false,
        
      ),
      
      body: Container(
        
        
        padding: EdgeInsets.all(5),
        
        color: Colors.white,
        child: ListView(    
                
          
          children: <Widget>[           
             SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("assets/imagens/app-logo.png")
              
            ),
            SizedBox(
              height: 20,
              
            ),
             
             
            Text.rich(
              
              TextSpan(  
                
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),                                        
                children: <TextSpan>[
                  TextSpan(text: "Obrigado por sua visita! O Portal do Setor é um App onde profissionais liberais, de diversas áreas, podem se cadastrar para oferecer seus serviços aos consumidores em geral. A mesma ferramenta serve para que estes mesmos consumidores pesquisem sobre a melhor opção para suas necessidades. ", 
                  style: TextStyle(fontStyle: FontStyle.normal),),
               ],
              ),
            ),

            SizedBox(
              height: 20,
              
            ),

             SizedBox(
              width: 62,
              height: 62,
              child: Image.asset("assets/imagens/desenvolvedor.png")
              
            ),

            Text.rich(
              
              TextSpan(  
                
                style: TextStyle(fontStyle: FontStyle.normal, fontSize: 16),                                        
                children: <TextSpan>[
                  TextSpan(text: "Este aplicativo foi desenvolvido por Marcelo Mosquiari.", 
                  style: TextStyle(fontStyle: FontStyle.italic),),
               ],
              ),
            ), 
                      
             Padding(padding: EdgeInsets.only(bottom: 60),), 

                     
            
              
            RaisedButton(
              child: Text("Voltar"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),

            ],),
          ),


        );                               
          

        

  }
}