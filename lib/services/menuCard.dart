import 'package:flutter/material.dart';
import 'package:untitled/services/animal.dart';

class Menucard extends StatelessWidget {
  final Animal animal;

  Menucard({required this.animal});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              animal.animalName,
              style: TextStyle(
                fontSize: 20,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Quantity: ${animal.quantity}',
              style: TextStyle(
                fontSize: 16,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
