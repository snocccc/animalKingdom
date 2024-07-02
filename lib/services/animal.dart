class Animal {
  int id;
  String animalName;
  String Description;
  int Quantity;

  Animal({required this.id, required this.animalName, required this.Description, required this.Quantity});

  factory Animal.fromJson(Map<String, dynamic>json){
    return switch(json){
    {'id' : int id,
    'animalName' : String animalName,
    'description' : String Description,
    'quantity' : int Quantity
    } =>

    Animal(
      id: id,
      animalName: animalName,
      Description: Description,
      Quantity: Quantity
    ),
    _ => throw const FormatException ('Failed to Load Animals'),

    };
    }
  }
