import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {
  @override
  _TelaServicosState createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container (
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Serviços",
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
                  "Consultorias",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Cálculo de Orçamentos",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Acompanhamento de Projetos",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 23,
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

