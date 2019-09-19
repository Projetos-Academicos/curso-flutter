import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp(MaterialApp(
    title: "Frases do dia",
    home: Home() ,
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _frases = [
    "Os problemas são oportunidades para se mostrar o que sabe.",
    "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos.",
    "Tente de novo. Fracasse de novo. Mas fracasse melhor",
    "É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo",
    "O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido",
    "Mesmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer",
    "Na prosperidade, nossos amigos nos conhecem; na adversidade, nós é que conhecemos nossos amigos",
    "A felicidade não está em fazer o que a gente quer, e sim querer o que a gente faz",
    "É sempre divertido fazer o impossível",
    "Não somos responsáveis apenas pelo que fazemos, mas também pelo que deixamos de fazer"
  ];

  var _fraseGerada = "Clique no botão para gerar uma nova frase!";

  void _gerarFrase(){

    var numeroRandomico = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroRandomico];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ) ,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                ),
              ),
              RaisedButton(
                  color: Colors.green,
                  onPressed: _gerarFrase,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child:Text(
                      "Gerar Frase",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                      ),
                    ) ,
                  )
              )
            ],
          ),
        ),
      )
    );
  }
}
