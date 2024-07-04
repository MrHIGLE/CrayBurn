import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          }),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: null, // No hace nada al presionar
              child: Text('Login'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Column(
                children: <Widget>[
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(120, 30)),
                    onPressed: null, // No hace nada al presionar
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/Imagenes/Google_logo.png',
                          width: 18.0,
                        ),
                        SizedBox(width: 4.0),
                        Text('Log in with Google'),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(120, 30)),
                    onPressed: null, // No hace nada al presionar
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/Imagenes//Facebook-Logo.png',
                          width: 18.0,
                        ),
                        SizedBox(width: 4.0),
                        Text('Logeate con Facebook'),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(minimumSize: Size(120, 30)),
                    onPressed: null, // No hace nada al presionar
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/Imagenes/X_logo.jpg',
                          width: 18.0,
                        ),
                        SizedBox(width: 4.0),
                        Text('Log in with Twitter'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}