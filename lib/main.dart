import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('User Profile'),
      backgroundColor: Colors.deepPurple[700],
      centerTitle: true,
    ),
    body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'NAME',
             style: TextStyle(
               fontSize: 18.0,
               color: Colors.deepPurple[500],
               letterSpacing: 2.0,
             )
          ),
          Text(
            'Cons Henren Gaa',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               color: Colors.deepPurple[700],
               fontSize: 25.0,
             ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'YEAR',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.deepPurple[500],
              letterSpacing: 2.0,
            ),
          ),
          Text(
            '4TH',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[700],
              fontSize: 25.0,
            ),
          ),
          SizedBox(height: 30.0,),
          Text(
            'Email',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.deepPurple[500],
              letterSpacing: 2.0,
            ),
          ),
          Text(
            'Gaa.concon25@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple[700],
              fontSize: 25.0,
            ),
          ),
        ],
      ),
    ),
  ),
));



