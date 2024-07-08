import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:untitled/pages/selectedanimal.dart';
import 'package:untitled/services/animal.dart';
import 'package:untitled/services/menuCard.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late Future<List<dynamic>> animals;

  // 10.0.2.2:8080
  Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/products')
      //Product newProduct = Products.fromJson(date);
      //   return newProduct;
      //if you want to call 1 product
    );
    final data = jsonDecode(response.body);
    print(data);
    List animals = <Animal>[];
    for (var animal in data) {
      animals.add(Animal.fromJson(animal));
    }
    return animals;
  }

  @override
  void initState() {
    super.initState();
    animals = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        foregroundColor: Colors.white,
        title: Text(
          'Menu',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: FutureBuilder(
          future: animals,
          builder: (context, snapshots) {
            if (snapshots.connectionState == ConnectionState.waiting) {
              return Center(
                child: SpinKitWaveSpinner(
                  color: Colors.black,
                  size: 60.0,
                ),
              );
            }

            if (snapshots.hasData) {
              List animals = snapshots.data!;
              return Padding(
                padding: EdgeInsets.all(3.0),
                child: ListView.builder(
                  itemCount: animals.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 100, // Adjust the height as needed
                      width: double.infinity, // Card takes full width of the ListView
                      margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Card(
                        color: Colors.lightBlue[900],
                        child: ListTile(
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                animals[index].productName,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Quantity: ${animals[index].Quantity.toString()}',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => selectedanimal(animal: animals[index])
                                )
                            );
                            // Add onTap functionality if needed
                          },
                        ),
                      ),
                    );
                  },
                ),
              );
            }


            return Center(
              child: Text('Unable to load data'),
            );
          },
        ),
      ),
    );
  }
}



