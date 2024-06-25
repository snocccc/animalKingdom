import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key); // Fix super.key issue

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Profile',
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        backgroundColor: Colors.deepPurple[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50, // Adjust radius as needed
                backgroundImage: AssetImage('assets/donatello.png'),
              ),
            ),
            SizedBox(height: 20), // Add spacing after the image
            Row(
              children: [
                Icon(
                  Icons.person_2_rounded,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(width: 3.0),
                Text(
                  'NAME',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.deepPurple[500],
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Text(
              'Cons Henren Gaa',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[700],
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.school,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(width: 3.0),
                Text(
                  'YEAR',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.deepPurple[500],
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(width: 5.0), // Adjust spacing between icon and text
                Text(
                  '4TH',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple[700],
                    fontSize: 25.0,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(width: 3.0),
                Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.deepPurple[500],
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            Text(
              'Gaa.concon25@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple[700],
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 10.0), // Add spacing after email text
            Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Add your onPressed code here!
                },
                child: Text(
                  'Press Me',
                  style: TextStyle(
                    color: Colors.white, // Set text color to white
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple[700],
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
