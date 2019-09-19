import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imageApp = AssetImage("images/padrao.png");
  var _mensagem = "Faça sua escolha:";

  void _validarRegraJogo(String escolhaUsuario){

    var escolhaApp = _gerarEscolhaApp();
    if(escolhaUsuario == escolhaApp){
      setState(() {
        _mensagem = "Empatou, jogue novamente!";
      });
    } else if( escolhaUsuario == "pedra" && escolhaApp == "tesoura" ||
        escolhaUsuario == "tesoura" && escolhaApp == "papel" ||
        escolhaUsuario == "papel" && escolhaApp == "pedra"){

      setState(() {
        _mensagem = "Parabéns, você venceu!";
      });
    }else {
      setState(() {
        _mensagem = "Você perdeu, tente novamente!";
      });
    }

  }


  String _gerarEscolhaApp(){

    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];

    switch(escolhaApp){
      case "pedra" :
        setState(() {
          _imageApp = AssetImage("images/pedra.png");
        });
        break;
      case "papel" :
        setState(() {
          _imageApp = AssetImage("images/papel.png");
        });
        break;
      case "tesoura" :
        setState(() {
          _imageApp = AssetImage("images/tesoura.png");
        });
        break;
    }

    return escolhaApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Image(image: this._imageApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _validarRegraJogo("pedra"),
                child: Image.asset("images/pedra.png", height: 100),
              ),
              GestureDetector(
                onTap: () => _validarRegraJogo("papel"),
                child: Image.asset("images/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: () => _validarRegraJogo("tesoura"),
                child: Image.asset("images/tesoura.png", height: 100),
              )
            ],
          )
        ],
      ),
    );
  }
}
