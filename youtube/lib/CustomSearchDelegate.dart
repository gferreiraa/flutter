import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
        IconButton(
          icon: Icon(Icons.clear),
          onPressed: (){
            query = "";
          },
        ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: (){
        close(context, "");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //("Resultado: Pesquisa Realizada");
   close(context, query);
   return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {

    return Container();

    //print("Resultado: Digitado " + query);

    /*
    List<String> listas = List();

    if( query.isNotEmpty ){

      listas = [
        "Android", "Android Navegação", "IOS", "Jogos"
      ].where(
          (texto) => texto.toLowerCase().startsWith(query.toLowerCase()),
      ).toList();

      return ListView.builder(
          itemCount: listas.length,
          itemBuilder: (context, index){
            return ListTile(
              onTap: (){
                close(context, listas[index]);
              },
              title: Text(listas[index]),
            );
          }
      );


    } else {
      return Center(
        child: Text("Nenhum resultado para sua pesquisa :("),
      );
    }

     */


  }

}