import 'package:flutter/material.dart';

class ButtonsNutricion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Botones izquierda
        Expanded(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.fitness_center_rounded),
                title: Text('Dietas Saludables'),
                onTap: () {
                  // Acción para el item 1
                },
              ),
              ListTile(
                leading: Icon(Icons.self_improvement),
                title: Text('Alimentso Proteicos'),
                onTap: () {
                  // Acción para el item 2
                },
              ),
              ListTile(
                leading: Icon(Icons.directions_run),
                title: Text('Sumplementos Nutricionales'),
                onTap: () {
                  // Acción para el item 3
                },
              ),
              ListTile(
                leading: Icon(Icons.youtube_searched_for),
                title: Text('Hidratacion'),
                onTap: () {
                  // Acción para el item 4
                },
              ),
            ],
          ),
        ),
        // Botones derecha
        Expanded(
          child: Column(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.restaurant),
                title: Text('Recetas Fitness'),
                onTap: () {
                  // Acción para el item 5
                },
              ),
              ListTile(
                leading: Icon(Icons.emoji_events),
                title: Text('Frutas y verduras'),
                onTap: () {
                  // Acción para el item 6
                },
              ),
              ListTile(
                leading: Icon(Icons.pedal_bike),
                title: Text('Consejos de Cocina'),
                onTap: () {
                  // Acción para el item 7
                },
              ),
              ListTile(
                leading: Icon(Icons.fitness_center),
                title: Text('Macronutrientes'),
                onTap: () {
                  // Acción para el item 8
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}