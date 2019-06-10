import 'package:flutter/material.dart';
import 'dart:math';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("img/padrao.png");
  var _mensagem =  "Escolha uma opção abaixo:";

  void _opcaoSelecionada(String escolhaUsuario){

    var opcoes = ["pedra", "papepl", "tesoura"];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    switch(escolhaApp){
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("img/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("img/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("img/tesoura.png");
        });
        break;
    }

    // Validação do ganhador:
    if(
      (escolhaUsuario == "pedra" && escolhaApp == "tesoura") || (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
          (escolhaUsuario == "papel" && escolhaApp == "pedra")
    ){
    // App ganhador
      setState(() {
        this._mensagem = "Parabéns!!! Você Ganhou! :)";
      });
    } else if(
      (escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
        (escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
        (escolhaApp == "pedra" && escolhaUsuario == "tesoura")
    ){
      setState(() {
        this._mensagem = "Você Perdeu!!! :(";
      });
    } else {
      setState(() {
        this._mensagem = "Empatamos!";
      });
    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("Joken Po"),
      ) ,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _opcaoSelecionada("pedra"),
                child: Image.asset("img/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("papel"),
                child: Image.asset("img/papel.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("tesoura"),
                child: Image.asset("img/tesoura.png", height: 100,),
              ),
            ],
          )
        ],
      ),
    );
  }
}