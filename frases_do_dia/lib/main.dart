import 'package:flutter/material.dart';

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
            Text("Clique abaixo para gerar uma frase.",
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
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}
