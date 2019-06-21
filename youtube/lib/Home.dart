import 'package:flutter/material.dart';
import 'package:youtube/telas/biblioteca.dart';
import 'package:youtube/telas/emAlta.dart';
import 'package:youtube/telas/inicio.dart';
import 'package:youtube/telas/inscricoes.dart';

import 'CustomSearchDelegate.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _indiceAtual = 0;
  String _resultado = "";

  @override
  Widget build(BuildContext context) {

    List<Widget> telas = [
      Inicio(_resultado),
      EmAlta(),
      Inscricoes(),
      Biblioteca()
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
            "img/youtube.png",
          width: 98,
          height: 22,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: (){
              print("Ação Video Cam");
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () async{
              String res = await showSearch(
               context: context,
               delegate: CustomSearchDelegate(),
              );
              setState(() {
                _resultado = res;
              });
              print("O resultado da pesquisa foi " + res);
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: (){
              print("Ação Account");
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice){
          setState(() {
            _indiceAtual = indice;
          });
        },
        //type: BottomNavigationBarType.shifting,
          type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              //backgroundColor: Colors.redAccent,
              title: Text("Inicio"),
              icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                //backgroundColor: Colors.redAccent,
                title: Text("Em alta"),
                icon: Icon(Icons.whatshot)
            ),
            BottomNavigationBarItem(
                //backgroundColor: Colors.red,
                title: Text("Inscrições"),
                icon: Icon(Icons.subscriptions)
            ),

            BottomNavigationBarItem(
                //backgroundColor: Colors.redAccent,
                title: Text("Sei la"),
                icon: Icon(Icons.folder)
            ),

          ]
      ),
    );
  }
}
