import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static final routeName = ' example';

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TixTransaction(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TixTransaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Ticket     | ",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
            Text(
              "Transaction",
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TicketMaterial(
            height: 150,
            colorBackground: Colors.white,
            leftChild: _buildLeft(),
            rightChild: _buildRight(),
            radiusBorder: 7,
          ),
        ),
      ),
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
            icon: Icon(Icons.confirmation_num),
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

Widget _buildLeft() {
  return Container(
    padding: EdgeInsets.all(15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'SHANG-CHI AND THE LEGEND OF THE TEN RINGS',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text("09:00 WIB | 18 NOV 2021"),
        Text("Transmart MX Mall XXI")
      ],
    ),
  );
}

Widget _buildRight() {
  return Container(
    child: Center(
      child: Icon(
        Icons.album_rounded,
        size: 40,
      ),
    ),
  );
}
