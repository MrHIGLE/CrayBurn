import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comunidad'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home'); // Regresa al home
          },
        ),
      ),

      body: ListView(
        children: [
          // Publicaciones de la comunidad
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/50'),
              ),
              title: Text('Juan Pérez'),
              subtitle: Text('¡Hola comunidad! ¿Alguien tiene algún consejo para mejorar mi squat?'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/50'),
              ),
              title: Text('María García'),
              subtitle: Text('¡Hola! ¿Alguien sabe de algún evento de CrossFit en la ciudad?'),
            ),
          ),
          // ...
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Abrir pantalla de crear publicación
        },
        child: Icon(Icons.create),
      ),
    );
  }
}