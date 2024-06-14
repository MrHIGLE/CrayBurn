import 'package:flutter/material.dart';

class Registro extends StatelessWidget{
    @override 

    Widget build(BuildContext context){
        return Column(
            children: [
                TextField(
                    decoration: InputDecoration(
                        labelText: 'Correo Electronico',
                    ),
                ),

                TextField(
                    decoration: InputDecoration(
                        labelText: 'Contraseña',
                    ),
                ),

                TextField(
                    decoration: InputDecoration(
                        labelText: 'Telefono',
                    ),
                ),

                TextField(
                    decoration: InputDecoration(
                        labelText: 'Nombre de usuario',
                    ),
                ),

                ElevatedButton(
                    onPressed: (){
                        //Codigo faltante para hacer el registro de usuario
                    },
                    child: Text('Registrarse'),
                          ),
            ],
        );
    }


}