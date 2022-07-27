import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Account(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: ListTile(
            leading: Image.asset('assets/images/profile.png'),
            title: Text(
              "Muhammad Siraj Hafizh",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            subtitle: Text(
              "sirajh611@gmail.com",
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Acoount",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            )
          ],
        ),
        Container(
          color: Colors.blueGrey[500],
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Profile",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Payment",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Wishlist",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                "Other",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            )
          ],
        ),
        Container(
          color: Colors.blueGrey[500],
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Help",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "About",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        currentIndex: 1,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Ticket",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
