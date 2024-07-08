import 'package:flutter/material.dart';
import 'package:untitled/services/animal.dart';

class selectedanimal extends StatefulWidget {
  final Animal animal;
  const selectedanimal({super.key, required this.animal});

  @override
  State<selectedanimal> createState() => _selectedanimalState(animal: animal);
}

class _selectedanimalState extends State<selectedanimal> {
  final Animal animal;
  late int totalAmount;
  int numberofQuantity = 1;
  _selectedanimalState({required this.animal});

  @override
  void initState(){
    super.initState();
    totalAmount = animal.Quantity;
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: const Text(
          "Total Animal",
          style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
          children: [
            Text(widget.animal.animalName,
              style: TextStyle(
                fontSize: 50.0
              ),

            ),
            Text(widget.animal.Description,
              style: TextStyle(
                  fontSize: 50.0
              ),
            ),
        ],
      ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text('₱${totalAmount.toStringAsFixed(2)}',
    style: TextStyle(
    fontSize: 20.0,
    ),
    ),
      Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                if(numberofQuantity > 1){
                  numberofQuantity -= 1;
                  totalAmount = animal.Quantity * numberofQuantity;

                }
              });
            },

            icon: Icon(Icons.remove),
          ),
          Text(numberofQuantity.toString(),
          style: TextStyle(
            fontSize: 20.0,
          ),
          ),
          IconButton(
            onPressed: (){
              setState(() {
                numberofQuantity +=1;
                totalAmount = animal.Quantity * numberofQuantity;
              });
            },
            icon: Icon(Icons.add),
          ),
        ],
      )
    ],
    ),
    ],
      ),
    );
  }
}
