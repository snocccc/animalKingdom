import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/services/animal.dart';
import 'package:untitled/services/menuCard.dart';
import 'package:http/http.dart' as http;

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {

  late Future<List<dynamic>> animals;
  Future<List<dynamic>> fetchData() async{
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/Animals'));
    final data = jsonDecode(response.body);
    print(data);
    List animals = <Animal>[];
    for(var animal in data){
      animals.add(Animal.fromJson(animal));
    }
    return animals;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animals = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App Bar Title', // Set your desired title here
          style: TextStyle(color: Colors.white), // Set the font color to white
        ),
        backgroundColor: Colors.deepPurple, // Set the color for the app bar
      ),

    );
  }
}



