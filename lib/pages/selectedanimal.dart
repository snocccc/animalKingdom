import 'package:flutter/material.dart';
import 'package:untitled/services/animal.dart';

class selectedanimal extends StatefulWidget {
  final Animal animal;
  const selectedanimal({super.key, required this.animal});

  @override
  State<selectedanimal> createState() => _selectedanimalState();
}

class _selectedanimalState extends State<selectedanimal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(widget.animal.animalName),
          Text(widget.animal.Description),
          Text(widget.animal.Quantity.toString()),
        ],
      ),
    );
  }
}
