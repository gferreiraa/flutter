import 'package:flutter/material.dart'; 

class Resultado extends StatefulWidget {

  String valor;

  Resultado(this.valor);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "img/moeda_cara.png";
    if(widget.valor == "cara"){
      caminhoImagem = "img/moeda_cara.png";
    } else{
      caminhoImagem = "img/moeda_coroa.png";
    }


    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Image.asset("img/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
