import 'package:flutter/material.dart';

void main() => runApp(MisIconosApp());

class MisIconosApp extends StatelessWidget {
  const MisIconosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ejemplo imagen circular"),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          centerTitle: true,
          backgroundColor: Color(0xff720ad4), // Color morado
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 50), // Espacio para la imagen
            Center(
              // Centrar la imagen
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://raw.githubusercontent.com/Dulce-Maria-Tolentino-De-Anda/p10-5autonma1367/refs/heads/main/se%C3%B1orbarbon.jpg'), // Reemplaza con la URL de tu imagen
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 60), // Espacio entre la imagen y el texto
            Text(
              "Dulce Tolentino 1367",
              style: TextStyle(fontSize: 30, color: Color(0xff5c62ba)),
            ),
          ],
        ),
      ),
    );
  }
}
