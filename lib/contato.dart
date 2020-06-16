import 'package:flutter/material.dart';


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
              child: Image.asset("assets/imagens/logo.png")
            ),
            SizedBox(
              height: 20,
            ),
            
            TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Nome:",
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
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email:",
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
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: "Telefone:",
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
                labelText: "Mensagem:                                                                                                                                                                                            ",
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
            
             
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
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
                  Navigator.pushNamed(context, '/pagina6'),
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




