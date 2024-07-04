import 'package:Crayburn/Butoon_Home/Nutricion/Nutricion.dart';
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
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 1
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fitness_center, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Entrenamiento', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 2
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.self_improvement, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Bienestar', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 3
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.directions_run, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Correr', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 4
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.youtube_searched_for, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Yoga', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
        // Botones derecha
        Expanded(
          child: Column(
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NutricionPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.restaurant, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Nutricion', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 6
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.emoji_events, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Desafio', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 7
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.pedal_bike, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Ciclismo', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0, backgroundColor: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                ),
                onPressed: () {
                  // Acción para el botón 8
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.fitness_center, color: Colors.grey),
                    SizedBox(width: 8),
                    Text('Fuerza', style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}