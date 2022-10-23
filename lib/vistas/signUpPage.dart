import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 128, 255, 192),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(children: [
          Spacer(
            flex: 1,
          ),
          Titulo("Registrarse"),
          Spacer(
            flex: 1,
          ),
          Image(
              image: AssetImage("assets/up.png"),
              width: 130,
              alignment: Alignment.centerRight),
          Spacer(
            flex: 1,
          ),
          SubTitulo("Registrate para conocer mas"),
          Spacer(
            flex: 1,
          ),
          campo("Usaurio", false),
          Spacer(
            flex: 1,
          ),
          campo("Email", false),
          Spacer(
            flex: 1,
          ),
          campo("Nombre", false),
          Spacer(
            flex: 1,
          ),
          campo("Celular", false),
          Spacer(
            flex: 1,
          ),
          campo("Dirección", false),
          Spacer(
            flex: 1,
          ),
          campo("Contraseña", true),
          Spacer(
            flex: 1,
          ),
          campo("Repetir Contraseña", true),
          Spacer(
            flex: 1,
          ),
          largeButton(() {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                  title: Text("Registrado con EXITO!"),
                  content: Text("Ya puedes iniciar sesion \n\n:)"),
                  backgroundColor: Color.fromARGB(255, 229, 247, 164)),
              barrierDismissible: true,
            );
          }, Color.fromARGB(255, 210, 255, 119), "Registrarse", 210, 50),
          Spacer(
            flex: 1,
          ),
        ]),
      ),
    ));
  }
}
