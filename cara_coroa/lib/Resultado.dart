import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String resultado;

  Resultado(this.resultado);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

  @override
  Widget build(BuildContext context) {

    var _caminhoImagem = "";

    if(widget.resultado == "cara"){
      _caminhoImagem = "images/moeda_cara.png";
    }else{
      _caminhoImagem = "images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(_caminhoImagem),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
