import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Botones izquierda
        Expanded(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fitness_center),
                    SizedBox(width: 8),
                    Text('Entrenamiento'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 1
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.self_improvement),
                    SizedBox(width: 8),
                    Text('Bienestar'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 2
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_run),
                    SizedBox(width: 8),
                    Text('Correr'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 3
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.youtube_searched_for),
                    SizedBox(width: 8),
                    Text('Yoga'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 4
                },
              ),
            ],
          ),
        ),
        // Botones derecha
        Expanded(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restaurant),
                    SizedBox(width: 8),
                    Text('Nutricion'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 5
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.emoji_events),
                    SizedBox(width: 8),
                    Text('Desafio'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 6
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.pedal_bike),
                    SizedBox(width: 8),
                    Text('Ciclismo'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 7
                },
              ),
              ElevatedButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fitness_center),
                    SizedBox(width: 8),
                    Text('Fuerza'),
                  ],
                ),
                onPressed: () {
                  // Acción para el botón 8
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}