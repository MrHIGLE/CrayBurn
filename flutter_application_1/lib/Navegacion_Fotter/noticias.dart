import 'package:flutter/material.dart';

class NoticiasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home'); // Regresa al home
          },
        ),
        backgroundColor: Colors.grey[200], // Color de fondo de la appBar
      ),
      body: ListView(
        children: [
          // Titulo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Noticias de Deportes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey[800]),
            ),
          ),

          // Noticia 1
          NoticiaCard(
            imagen: 'assets/Imagenes/Noticias/Real_barce.jpg',
            titulo: 'El Barcelona gana el partido contra el Real Madrid',
          ),

          // Noticia 2
          NoticiaCard(
            imagen: 'assets/Imagenes/Noticias/tenis.jpg',
            titulo: 'El tenista Rafael Nadal gana el torneo de Wimbledon',
          ),

          // Noticia 3
          NoticiaCard(
            imagen: 'assets/Imagenes/Noticias/mexico.jpg',
            titulo: '¿La selección de fútbol de México es una deshonra',
          ),

          // Noticia 4
          NoticiaCard(
            imagen: 'assets/Imagenes/Noticias/corredor.jpg',
            titulo: 'El corredor Eliud Kipchoge gana la maratón de Londres',
          ),

          // Noticia 5
          NoticiaCard(
            imagen: 'assets/Imagenes/Noticias/Kansas.jpg',
            titulo: 'El equipo de Kansas city gana su 4 campeonato de la NFL',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String imagen;
  final String titulo;

  NoticiaCard({required this.imagen, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(imagen),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              titulo,
              style: TextStyle(fontSize: 18, color: Colors.grey[800]),
            ),
          ),
        ],
      ),
    );
  }
}