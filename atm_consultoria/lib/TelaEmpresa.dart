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
        backgroundColor: Colors.deepPurple,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("img/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                        "Sobre a empresa",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text("Silvio Santos Ipsum ma quem quer dinheiroam? Valendo um "
                    "milhão de reaisammm. O Raul Gil é gayam! ... Maa O Ah Ae! Ih Ih! "
                    "O Raul Gil é gayamm! É namoro ou amizadeemm? Você veio da caravana "
                    "de ondeammm? Ha hai. Bem boladoam, bem boladoam. Bem gozadoam. "
                    "É por sua conta e riscoamm? Ma o Silvio Santos Ipsum é muitoam interesanteam. "
                    "Com ele ma você vai gerar textuans ha haae. Valendo um milhão de reaisammm. "
                    "É namoro ou amizadeemm? Qual é a musicamm? É fácil ou no é? Ma! Ao adquirir "
                    "o carnê do Baú, você estará concorrendo a um prêmio de cem mil reaisam."),
              )
            ],
          ),
        ),
      ),
    );
  }
}
