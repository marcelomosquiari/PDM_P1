import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  static String tag = '/pagina1';
  
  
  @override
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
              child: Image.asset("assets/imagens/logo.png")
            ),
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
