import 'package:Crayburn/Butoon_Home/Nutricion/Carousel_nutricion.dart';
import 'package:flutter/material.dart';
import 'Nutricion_buttons.dart';// Importar el archivo ButtonsNutricion

class NutricionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutricion'),
      ),
      body: Center(
        child: Column( 
        children:[
        ButtonsNutricion(), 
        CarouselNutricion(),
        ], // Utilizar los botones de ButtonsNutricion
      ),
      ),
    );
  }
}