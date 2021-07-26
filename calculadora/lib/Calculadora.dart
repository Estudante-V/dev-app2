import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora - Simples"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Resultado do Calculo
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
            //Campo de Texto(input valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Imforme o valor 1"),
              controller: t1,
            ),

            //Campo de Texto(imput valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Imforme o valor 2"),
              controller: t2,
            ),

            //Epasamento depois os inputs
            new Padding(padding: const EdgeInsets.only(top: 20)),

            //Nova linha(row)
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Botão Somar
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),

                //Botão Subtrair
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: subtrair,
                ),

                //Botão Dividir
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: dividir,
                ),

                //Botão Multiplicar
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: multiplicar,
                ),
              ],
            )
          ],
        ),
      ),
    );
  } //Fecha o metodo Build

  var n1;
  var n2;
  var resultado; //= 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");
  //Atributos

  //Metodos

  void somar() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      resultado = n1 + n2;
    });
  }

  void subtrair() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      resultado = n1 - n2;
    });
  }

  void dividir() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      resultado = n1 / n2;
    });
  }

  void multiplicar() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      resultado = n1 * n2;
    });
  }
}//Fecha a classe CalculadoraState
