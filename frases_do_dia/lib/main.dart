import 'package:flutter/material.dart';
import 'dart:math';

void main (){
  runApp(MaterialApp(
  home: HomeStateful(),
  debugShowCheckedModeBanner: false,
  ));
}

class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _frases = [
    "A vida é um caos aleatório,ordenada pelo tempo.",
    "Um ato aleatório de bondade, por menor que seja, pode ter um tremendo impacto na vida de outra pessoa.",
    "Faça a pessoa que você gosta se sentir especial ao invés de só mais uma.",
    "A verdade, é que dói lembrar dela.",
    "No mundo do aleatório a ordem é não se preocupar.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("img/logo.png"),
            Text( _fraseGerada,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w300
              ),
            ),
            RaisedButton(
              child: Text(
                  "Nova Frase",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                  ),
              ),
              color: Colors.amber,
              onPressed: _gerarFrase,
            ),
          ],
        ),
      ),
    );
  }
}
