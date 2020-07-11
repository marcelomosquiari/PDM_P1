import 'package:flutter/material.dart';
import 'package:projeto_p1/descricao.dart';



class Contato extends StatelessWidget {
  static String tag = 'contato';
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato: Fale Conosco"),
        backgroundColor: Colors.grey,
        automaticallyImplyLeading: false,
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 108,
              height: 108,
              child: Image.asset("assets/imagens/logo.png")
            ),
            SizedBox(
              height: 5,
            ),
            
            TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Nome:",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              ),
            ),
              SizedBox(
              height: 5,
            ),
             TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email:",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                ),
              ),
               style: TextStyle(
              fontSize: 20,
              ),
            ),
              SizedBox(
              height: 5,
            ),
              TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Telefone:",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 15,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              ),
            ),
              SizedBox(
              height: 5,
            ),
              TextFormField(              
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Mensagem:                                                                                                                                                                                            ",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                 
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              ),
            ),
              SizedBox(
              height: 5,
            ),
            
             
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 150,
              alignment: Alignment.center,
              
             child: SizedBox.expand(
              child: RaisedButton(
                child: Row(
                  children: <Widget>[
                    Text(
                      "Submeter Mensagem",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                 ),
                 onPressed: () => {
                  Navigator.push(context, new MaterialPageRoute(builder: (context) => new Descricao())
                  ),                
               },
            ),            
          ),          
        ), 
                  SizedBox(
                  height: 15,
                  ),

                  Container(
                  height: 30,
                  width: 150,
                  alignment: Alignment.center,
              
                  child: SizedBox.expand(
                    child: RaisedButton(
                      child: Row(
                        children: <Widget>[
                        Text(
                        "Voltar",
                        style: TextStyle(                    
                        fontWeight: FontWeight.normal,                                                
                        fontSize: 15,
                        
                        
                      ),
                      
                    ),
                  ],
                 ),
                 onPressed: () => {
                  Navigator.pop(context),
                 }
               ),
               ),
         ), ],
        ),
        ),
    );
  
  }
}