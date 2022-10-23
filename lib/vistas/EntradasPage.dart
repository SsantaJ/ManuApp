import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//import 'dart:html';
//import 'package:MenuAPP/vistas/home.dart';

class EntradasPage extends StatelessWidget {
  EntradasPage({Key? key}) : super(key: key);

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
              //Spacer(flex: 1,),
              txtcontr("ENTRADAS:", Color.fromARGB(255, 255, 255, 255), 42,
                  Color.fromARGB(255, 11, 111, 12)),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              //SizedBox(height: screenheight * 0.01),
              //child:
              contenedor(
                  () {},
                  () {},
                  "Ceviche de Camaron",
                  "10.000\$",
                  "Champiñones Rellenos",
                  "15.800\$",
                  screenwidth,
                  screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Papas Fritas", "3.100\$", "Tortilla",
                  "6.550\$", screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Frutas Secas", "4.900\$",
                  "Sopa de pollo", "7.300\$", (screenwidth), (screenheight))
            ],
          ),
        ),
      ),
    );
  }
}
