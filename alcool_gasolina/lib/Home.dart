import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _txtAlcool = TextEditingController();
  TextEditingController _txtGasolina = TextEditingController();
  var _resultado = "";

  void _calcular(){

    double precoAlcool = double.tryParse(_txtAlcool.text);
    double precoGasolina = double.tryParse(_txtGasolina.text);

    if(precoAlcool == null || precoGasolina == null){
      setState(() {
        _resultado = "Digite valores maior que 0 e utilizando(.)";
      });
    }else{
        double valorFinal = precoAlcool / precoGasolina;

        if(valorFinal >= 0.7){
          setState(() {
            _resultado = "O combustivel indicado é a Gasolina!";
          });
        } else{
          setState(() {
            _resultado = "O combustivel indicado é o Álcool!";
          });
        }
        _limparCampos();
    }
  }

  void _limparCampos(){
    _txtAlcool.text = "";
    _txtGasolina.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset("images/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Informe o valor do álcool e da gasolina, para realizar o cáculo:",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço do álcool",
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _txtAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço da gasolina",
                ),
                style: TextStyle(
                    fontSize: 20
                ),
                controller: _txtGasolina,
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10),
                  onPressed: _calcular,
                  child: Text(
                    "Calcular",
                    style: TextStyle(
                        fontSize: 23
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                    _resultado,
                  style: TextStyle(
                    fontSize: 20,
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
