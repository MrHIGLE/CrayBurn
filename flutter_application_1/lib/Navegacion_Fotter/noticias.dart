import 'package:flutter/material.dart';

class NoticiasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Titulo
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Noticias de Deportes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),

          // Noticia 1
          Card(
            child: Column(
              children: [
                Image.asset('assets/noticias/noticia1.jpg'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Noticia 1: El Barcelona gana el partido contra el Real Madrid',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),

          // Noticia 2
          Card(
            child: Column(
              children: [
                Image.asset('assets/noticias/noticia2.jpg'),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Noticia 2: El tenista Rafael Nadal gana el torneo de Wimbledon',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}