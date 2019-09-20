import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container (
            padding: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Image.asset("images/detalhe_empresa.png"),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Sobre a Empresa",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    "when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    "It has survived not only five centuries, but also the leap into electronic typesetting,"
                    "remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset"
                    "sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like"
                    "Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established "
                    "fact that a reader will be distracted by the readable content of a page when looking at its "
                    "layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of"
                    "letters, as opposed to using 'Content here, content here', making it look like readable English."
                    "Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,"
                    "and a search for 'lorem ipsum' will uncover many web sites still in their infancy."
                    "Various versions have evolved over the years, sometimes by accident, sometimes on purpose "
                    "(injected humour and the like).",
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
