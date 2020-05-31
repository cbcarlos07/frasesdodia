
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateFul(),
  ));
}

class HomeStateFul extends StatefulWidget {
  @override
  _HomeStateFulState createState() => _HomeStateFulState();
}

class _HomeStateFulState extends State<HomeStateFul> {
   List _frases = [
    'Tudo o que fizerem, façam de todo o coração, como para o Senhor, e não para os homens, Colossenses 3:23',
    'Tudo posso naquele que me fortalece. Filipenses 4:13',
    'pois é Deus quem efetua em vocês tanto o querer quanto o realizar, de acordo com a boa vontade dele. Filipenses 2:13',
    'Sejam fortes e corajosos. Não tenham medo nem fiquem apavorados por causa delas, pois o Senhor, o seu Deus, vai com vocês; nunca os deixará, nunca os abandonará". Deuteronômio 31:6'
  ]; 	
  var _fraseGerada = "Clique aqui para gerar uma frase";
  void _gerarFrase(){
	  var numeroSorteado = Random().nextInt( _frases.length );
	  setState(() {
	  _fraseGerada = _frases[ numeroSorteado ];
	  });
  }
  @override
  Widget build(BuildContext context) {
	  
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center( //centralizando itens na tela
        child: Container(
          padding: EdgeInsets.all(16),
          //maneiras de caber em toda a tela, outra colocando dentro do widget Center no body
          //width: double.infinity, 
          
          /*decoration: BoxDecoration(
            border: Border.all( width: 3, color: Colors.amber )
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,          
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.black
                ),
              ),
              RaisedButton(
                child: Text(
                  "Nova frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                color: Colors.green, 
                onPressed: _gerarFrase,
              )
            ],
          ),
      ),
      ),
    );
  }
}