import 'package:flutter/material.dart';
import 'buttons_widget_home.dart';
import 'carousel_widget.dart';
import "RegistroPage.dart";
import 'LoginPage.dart';


import 'Navegacion_Fotter/noticias.dart';
import 'Navegacion_Fotter/workout.dart';
import 'Navegacion_Fotter/comunidad.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrayBurn Demo',
      home: MyHomePage(),
      routes: {
        '/registro': (context) => RegistroPage(),
        '/login': (context) => LoginPage(),
        
        '/home': (context) => MyHomePage(),


        '/workout': (context) =>WorkoutHub(),
        '/noticias': (context) => NoticiasWidget(),
        '/comunidad': (context) => CommunityScreen(),
      },
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xFF5C5C5C), // Set app bar color to black
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Column(
      children: <Widget>[
        ButtonsWidget(),
        CarouselWidget(),
      ],
    ),
    Text('workout'),
    Text('noticias'),
    Text('comunidad'),
  ];

  void onTabTapped(int index) {
    if (index == 1) {
      Navigator.pushNamed(context, '/workout'); // Navegar a WorkoutHub cuando se presiona el botón de Workout
    }
    else if(index == 2){
      Navigator.pushNamed(context, '/noticias');
    }
    else if(index == 3){
      Navigator.pushNamed(context, '/comunidad');
    }
    else{
      setState(() {
      _currentIndex = index;
    });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CrayBurn'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Color(0xFF5C5C5C), // Set drawer header color to black
              ),
            ),
            ListTile(
              leading: Icon(Icons.app_registration),
              title: Text('Registro'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/registro');
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Iniciar sesión'),
              onTap: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[Color(0xFF1F1F1F), Color(0xFF3D3D3D)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            ),
        ),
      child: _children[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Noticias',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Comunidad',
          ),
        ],
        currentIndex: _currentIndex,
        backgroundColor: Color(0xFF1F1F1F), // Set background color to black
        selectedItemColor: Color(0xFC223928), // Set selected item color to red
        unselectedItemColor: Color(0xFF3D3D3D), // Set unselected item color to white
        onTap: onTabTapped,
      ),
    );
  }
}