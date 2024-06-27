import 'package:flutter/material.dart';
import 'package:untitled/services/animal.dart';
import 'package:untitled/services/menuCard.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

List<Animal> animal = [
  Animal(animalName: "Paeng", quantity: 1),
  Animal(animalName: "Jarllan", quantity: 1),
  Animal(animalName: "Angelo", quantity: 1),
  Animal(animalName: "Franze", quantity: 1),
  Animal(animalName: "Buddy", quantity: 1),
];

class _MenuState extends State<Menu> {
  void incrementQuantity(int index) {
    setState(() {
      animal[index].quantity++;
    });
  }

  Widget cardTemplate(Animal animal, int index) {
    return SizedBox(
      height: 138,
      child: Card(
        margin: EdgeInsets.all(4),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
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
                  fontSize: 20,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => incrementQuantity(index),
                    child: Text("Add Quantity"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
      backgroundColor: Colors.deepPurple[300],
      body: Padding(
        padding: EdgeInsets.all(7.0),
        child: SingleChildScrollView(
          child: Column(
            children: animal.asMap().entries.map((entry) {
              int index = entry.key;
              Animal animal = entry.value;
              return cardTemplate(animal, index);
            }).toList(),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Menu(),
  ));
}
