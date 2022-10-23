import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BebidasPage extends StatelessWidget {
  BebidasPage({Key? key}) : super(key: key);

  double screenheight = 0.0;
  double screenwidth = 0.0;
  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          width: screenwidth,
          height: screenheight,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/entradaf.jpg"), fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: (screenheight * 0.05),
              ),
              txtcontr("BEBIDAS:", Color.fromARGB(255, 255, 255, 255), 42,
                  Color.fromARGB(255, 11, 111, 12)),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "CocaCola litro", "9.000\$",
                  "Botella de Agua", "2.800\$", screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Cerveza Aguila", "5.000\$", "Jugo HIT",
                  "4.500\$", screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Limonada", "6.500\$", "Jugo de Mora",
                  "8.000\$", (screenwidth), (screenheight))
            ],
          ),
        ),
      ),
    );
  }
}
