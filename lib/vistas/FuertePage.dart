import 'package:MenuAPP/widgets/funciones.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FuertePage extends StatelessWidget {
  FuertePage({Key? key}) : super(key: key);

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
              txtcontr("PLATOS FUERTES:", Color.fromARGB(255, 255, 255, 255),
                  42, Color.fromARGB(255, 11, 111, 12)),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                      title: Text("Carne Asada"),
                      content: Container(
                          decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/carne.jpg"),
                            fit: BoxFit.cover),
                      )),
                      backgroundColor: Colors.green[50]),
                  barrierDismissible: true,
                );
              }, () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                      title: Text("Bandeja Paisa"),
                      content: Container(
                          decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/bandeja.jpg"),
                            fit: BoxFit.cover),
                      )),
                      backgroundColor: Colors.green[50]),
                  barrierDismissible: true,
                );
              }, "Carne Asada", "19.900\$", "Bandeja Paisa", "22.800\$",
                  screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Pollo Asado", "15.100\$",
                  "Salmon Cocinado", "6.550\$", screenwidth, screenheight),
              SizedBox(
                height: (screenheight * 0.08),
              ),
              contenedor(() {}, () {}, "Lasagna", "16.300\$", "Lechona",
                  "17.300\$", (screenwidth), (screenheight))
            ],
          ),
        ),
      ),
    );
  }
}
