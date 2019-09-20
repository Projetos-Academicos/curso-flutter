import 'package:atm_consultoria/TelaClientes.dart';
import 'package:atm_consultoria/TelaContatos.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServicos.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _chamarTela(String tela){

    switch(tela){
      case "TelaEmpresa" :
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaEmpresa() ));
        break;
      case "TelaServicos" :
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaServicos() ));
        break;
      case "TelaClientes" :
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaClientes() ));
        break;
      case "TelaContatos" :
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaContatos() ));
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Image.asset("images/logo.png"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _chamarTela("TelaEmpresa"),
                    child: Image.asset("images/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: () => _chamarTela("TelaServicos"),
                    child: Image.asset("images/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => _chamarTela("TelaClientes"),
                    child: Image.asset("images/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: () => _chamarTela("TelaContatos"),
                    child: Image.asset("images/menu_contato.png"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
