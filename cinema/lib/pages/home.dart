import 'package:flutter/material.dart';
import 'account.dart';

class HomePage extends StatelessWidget {
  int _selectButton = 0;
  int counter = 0;
  final List<Widget> _children = [Account()];

  void _onItemTapped(int index) {
    setState(() {
      _selectButton = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        elevation: 0,
        centerTitle: true,
        title: Row(
          children: [
            Text("Hello ",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            Text("Ihza")
          ],
        ),
        actions: [
          Image.asset(
            'assets/images/profile.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 30),
              color: Colors.blueGrey[900],
              height: double.maxFinite,
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_location_alt_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        "  Malang City ",
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 16,
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: TextFormField(
                        decoration: new InputDecoration(
                      labelText: "Search Movie",
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0),
                      ),
                    )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Playing ",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Now",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Shang-Chi.png',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        " ● ● ●",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Promo",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/Tix.png',
                          height: 100,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        currentIndex: _selectButton,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
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

  void setState(Null Function() param0) {}
}
