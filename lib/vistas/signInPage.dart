import 'dart:html';
import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';
import 'package:MenuAPP/vistas/InicioPage.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
            width: screenwidth,
            height: screenheight,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 251, 213, 181),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Spacer(flex: 1),
                Titulo("SIGN IN"),
                Spacer(flex: 1),
                Image(image: AssetImage("assets/prueba.png"), width: 130),
                Spacer(flex: 1),
                SubTitulo(
                    "Conectate a esta aplicacion maravillosa y mucho mas."),
                Spacer(flex: 1),
                const SizedBox(
                  width: 200,
                  child: TextField(
                      decoration: InputDecoration(hintText: "Usuario")),
                ),
                SizedBox(height: 20),
                const SizedBox(
                  width: 200,
                  child: TextField(
                      decoration: InputDecoration(hintText: "Contraseña"),
                      obscureText: true),
                ),
                SizedBox(height: 20),
                Spacer(),
                largeButton(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Home();
                      },
                    ),
                  );
                }, Color.fromARGB(255, 129, 245, 212), "Iniciar Sesion", 160,
                    50),
                Spacer(),
                SubTitulo("MENUAPP"),
                Spacer()
              ],
            )),
      ),
    );
  }
}
