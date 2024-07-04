import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselNutricion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: CarouselSlider(
        items: [
          Container(
            margin: EdgeInsets.all(5.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  child: Image.asset('assets/Imagenes/Nutricion/Kinoa.jpg', fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Descripción de la Ensalada de Quinoa con Verduras',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'La ensalada de quinoa con verduras es una opción fresca, colorida y nutritiva que combina una base de quinoa esponjosa y rica en proteínas con una variedad de verduras crujientes y sabrosas.',
                          style: TextStyle(fontSize: 14),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            // Acción cuando se presiona el botón
                          },
                          child: Text('Más información'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ...
        ],
        options: CarouselOptions(
          // ...
        ),
      ),
    );
  }
}