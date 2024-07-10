import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Menu Page'), // Replace with actual pages or widgets
    Text('Profile Page'),
    Text('Sign Up Page'),
    Text('Log In Page'),
  ];

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/menu'); // Navigate to Menu page or perform action
        break;
      case 1:
        Navigator.pushNamed(context, '/profile'); // Navigate to Profile page or perform action
        break;
      case 2:
        Navigator.pushNamed(context, '/signup'); // Navigate to Sign Up page or perform action
        break;
      case 3:
      // Navigate to Log In page or perform action
        Navigator.pushNamed(context, '/login'); // Navigate to login page
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Sign Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Log In',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple.withOpacity(0.5),
        backgroundColor: Colors.purple,
        unselectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
    );
  }
}
