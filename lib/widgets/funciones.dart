import 'package:flutter/material.dart';

GestureDetector largeButton(
    VoidCallback function, Color bgColor, String text, double x, double y) {
  return GestureDetector(
    onTap: function,
    child: Container(
      width: x,
      height: y,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            width: 1,
          )),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
          color: Colors.black,
        ),
      )),
    ),
  );
}

GestureDetector btxtcolor(VoidCallback funcion, String txt, Color colr,
    Color coltxt, double x, double y) {
  return GestureDetector(
      onTap: (funcion),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
            color: colr,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 1)),
        child: Center(
          child: Text(
            txt,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: coltxt),
          ),
        ),
      ));
}

Text Titulo(String text) {
  return Text(
    text,
    style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.black),
  );
}

Text SubTitulo(String text) {
  return Text(text,
      style: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
      textAlign: TextAlign.center);
}

Text txt(String text, Color colr, double tam) {
  return Text(text,
      style: TextStyle(fontSize: tam, fontWeight: FontWeight.w500, color: colr),
      textAlign: TextAlign.center);
}

Text txtsombra(String text, Color colr, double tam, Color colr2) {
  return Text(text,
      style: TextStyle(
          fontSize: tam,
          fontWeight: FontWeight.w800,
          color: colr,
          shadows: [
            Shadow(
              color: colr2,
              offset: Offset(2, 2),
            )
          ]),
      textAlign: TextAlign.center);
}

Center txtcontr(String txt, Color clr1, double tam, Color clr2) {
  return Center(
      child: Center(
          child: Stack(children: [
    Text(
      txt,
      style: TextStyle(
          fontSize: tam,
          //color: clr1,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          foreground: Paint()
            ..style = PaintingStyle.stroke
            ..strokeWidth = 4
            ..color = clr1),
    ),
    Text(
      txt,
      style: TextStyle(
        fontSize: tam,
        color: clr2,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    )
  ])));
}

GestureDetector boton(
    VoidCallback function, String text, String ruta, double x, double y) {
  return GestureDetector(
      onTap: (function),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ruta),
            fit: BoxFit.cover,
            opacity: 0.8,
          ),
          borderRadius: BorderRadius.circular(40),
          border:
              Border.all(width: 3, color: Color.fromARGB(255, 173, 251, 90)),
        ),
        child: Center(
            child: Stack(children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.white),
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )
        ])),
      ));
}

GestureDetector botoncomida(
    VoidCallback function, String text, String precio, double x, double y) {
  return GestureDetector(
      onTap: (function),
      child: Container(
        width: x,
        height: y,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 172, 236, 104),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          border:
              Border.all(width: 3, color: Color.fromARGB(255, 251, 251, 251)),
        ),
        child: Center(
            child: Stack(children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                //fontStyle: FontStyle.italic,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.white),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              //fontStyle: FontStyle.italic
            ),
          ),
          //SizedBox(height: 200,),

          Text(
            "\n\n" + precio,
            textAlign: TextAlign.end,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          ),
        ])),
      ));
}

Container contenedor(VoidCallback func1, VoidCallback func2, String text1,
    String precio1, String text2, String precio2, double x, double y) {
  return Container(
    width: x * 0.9,
    height: y * 0.15,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color.fromARGB(0, 165, 214, 167)),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        botoncomida(func1, text1, precio1, (x * 0.39), (y * 0.15)),
        SizedBox(
          width: (x * 0.12),
        ),
        botoncomida(func2, text2, precio2, (x * 0.39), (y * 0.15)),
      ],
    ),
  );
}

SizedBox campo(String text, bool obs) {
  return SizedBox(
    width: 210,
    child: TextField(
      obscureText: obs,
      decoration: InputDecoration(hintText: text),
    ),
  );
}
