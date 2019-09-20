import 'package:flutter/material.dart';

class TelaContatos extends StatefulWidget {
  @override
  _TelaContatosState createState() => _TelaContatosState();
}

class _TelaContatosState extends State<TelaContatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Contatos"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container (
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_contato.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Nosso Contatos",
                      style: TextStyle(
                          fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "atm.consultoria@contato.com",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "Telefone: (81) 3465-7890",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  "Calular: (81) 9 9463-3530",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
