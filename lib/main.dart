import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Animal Kingdom App'),
        ),
        backgroundColor: Colors.lightBlue[700],
      ),
      body: Center(
        child: Text(
          'Welcome to the Jungle',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[850],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('Click Me'),
      ),
    ),
  ));
}



