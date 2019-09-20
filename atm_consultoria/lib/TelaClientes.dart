import 'package:flutter/material.dart';

class TelaClientes extends StatefulWidget {
  @override
  _TelaClientesState createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Clientes"),
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
                  Image.asset("images/detalhe_cliente.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "Nossos Clientes",
                      style: TextStyle(
                          fontSize: 25,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset("images/cliente1.png")
              ),
              Text(
                "Empresa de Software"
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Image.asset("images/cliente2.png")
              ),
              Text(
                  "Empresa Juridica"
              ),
            ],
          ),
        ),
      ),
    );
  }
}
