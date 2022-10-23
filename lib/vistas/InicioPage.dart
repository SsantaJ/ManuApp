import 'package:MenuAPP/vistas/BebidasPage.dart';
import 'package:MenuAPP/vistas/EntradasPage.dart';
import 'package:MenuAPP/vistas/FuertePage.dart';
import 'package:MenuAPP/vistas/PostresPage.dart';
import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  double screenwidth = 0.0;
  double screenheight = 0.0;
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
                image: AssetImage("assets/fondo.png"), fit: BoxFit.cover)),
        child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: screenheight * 0.099,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Image(
                  image: AssetImage("assets/food.png"),
                  width: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Titulo("INICIO"),
              ]),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          btxtcolor(() {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                  title: Text("Su reserva ha sido realizada con exito!"),
                  content: Text(
                      "Muchas gracias por su reserva \n\n LO ESPERAMOS..."),
                  backgroundColor: Colors.green[50]),
              barrierDismissible: true,
            );
          },
              "Reservar Mesas",
              Color.fromARGB(255, 221, 240, 175),
              Color.fromARGB(255, 17, 0, 76),
              (screenwidth * 0.88),
              (screenheight * 0.1)),
          Spacer(flex: 1),
          txtsombra("VISUALIZAR MENU:", Color.fromARGB(255, 255, 255, 255), 20,
              Color.fromARGB(255, 9, 2, 61)),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boton(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EntradasPage();
                }));
              }, "Entradas", "assets/entrantes.png", (screenwidth * 0.38),
                  (screenheight * 0.2)),
              SizedBox(
                width: (screenwidth * 0.1),
              ),
              boton(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FuertePage();
                }));
              }, "Platos Fuertes", "assets/fuerte.png", (screenwidth * 0.38),
                  (screenheight * 0.2)),
            ],
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              boton(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BebidasPage();
                }));
              }, "Bebidas", "assets/bebidas.png", (screenwidth * 0.38),
                  (screenheight * 0.2)),
              SizedBox(
                width: (screenwidth * 0.1),
              ),
              boton(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PostresPage();
                }));
              }, "Postres", "assets/postre.png", (screenwidth * 0.38),
                  (screenheight * 0.2)),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          txtsombra("MENUAPP", Color.fromARGB(255, 255, 255, 255), 15,
              Color.fromARGB(255, 255, 0, 0)),
          SizedBox(
            height: screenheight * 0.06,
          )
        ]),
      ),
    ));
  }
}
