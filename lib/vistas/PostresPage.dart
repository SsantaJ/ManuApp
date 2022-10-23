import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostresPage extends StatelessWidget {
  PostresPage({Key? key}) : super(key: key);

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
              txtcontr("POSTRES:", Color.fromARGB(255, 255, 255, 255), 42,
                  Color.fromARGB(255, 11, 111, 12)),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Helado de Vainilla", "7.000\$",
                  "Brownies", "10.800\$", screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Dulce de Leche", "5.000\$",
                  "Fresas con Crema", "6.500\$", screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Natilla", "3.500\$", "Dulce de Mora",
                  "6.000\$", (screenwidth), (screenheight))
            ],
          ),
        ),
      ),
    );
  }
}
