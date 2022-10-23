import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/painting/border_radius.dart';
import 'package:MenuAPP/vistas/signInPage.dart';
import 'package:MenuAPP/vistas/signUpPage.dart';
import 'package:MenuAPP/widgets/funciones.dart';

class wellcomePage extends StatelessWidget {
  wellcomePage({Key? key}) : super(key: key);
  double screenwidth = 0.0;
  double screenheight = 0.0;
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: screenwidth,
        height: screenheight,
        decoration: BoxDecoration(
          color: const Color(0xFFF2E8DF),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Spacer(flex: 2),
            const Text(
              "Bienvenido",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Spacer(flex: 2),
            const Image(
              image: AssetImage("assets/welcome.png"),
              width: 150,
            ),
            Spacer(flex: 2),
            SubTitulo("Inicie sesion o registrese para continuar... "),
            Spacer(flex: 2),
            largeButton(() {
              //aqui la funcion
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignInPage();
                  },
                ),
              );
            }, Colors.transparent, "Iniciar Sesion", 160, 50),
            Spacer(flex: 1),
            largeButton(() {
              //aqui la funcion
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SignUpPage();
                  },
                ),
              );
            }, Color(0xFFF2D06B), "Registrarse", 160, 50),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
