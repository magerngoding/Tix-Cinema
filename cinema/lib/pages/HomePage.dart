// ignore_for_file: file_names, prefer_const_constructors

import 'package:cinema/pages/account/Account.dart';

import 'package:cinema/pages/ticket/Ticket.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final List<String> imgList = [
  'Tix.png',
  'Tix.png2',
  'Tix3.png'
]; // List gambar assets

final items = [
  "Bogor City",
  "Jakarta",
  "Bekasi",
  'Depok'
]; // List of items in our dropdown menu

String dropdownKota = 'Bogor City'; // Initial Selected Value

class _HomePageState extends State<HomePage> {
  int index = 0; // untuk icon navigator

  List showWidhet = [
    // INDEX KE - 0 -> HOME
    Container(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.add_location_alt_outlined,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DropdownButton(
                        style: TextStyle(color: Colors.grey, fontSize: 16),

                        // Initial Value
                        value: dropdownKota,

                        // Down Arrow Icon
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            color: Colors.white,
                          ),
                        ),

                        // Array list of items
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        // After selecting the desired option,it will
                        // change button value to selected value
                        onChanged: (String? newValue) {
                          // SET STATE ERORR
                          // setState(() {
                          //   dropdownKota = newValue!;
                          // });
                        },
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[700],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          hintText: "Search Movie",
                          fillColor: Colors.white),
                    ),
                  ),
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
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: imgList
                        .map(
                          (item) => Container(
                            child: Center(
                              child: Image.asset('assets/images/Shang-Chi.png'),
                            ),
                          ),
                        )
                        .toList(),
                  ),
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
                const SizedBox(height: 10),
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
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: imgList
                        .map(
                          (item) => Container(
                            child: Center(
                              child: Image.asset('assets/images/Tix.png'),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),

    // INDEX KE - 1 -> TICKET
    Ticket(),

    // INDEX KE - 2 -> ACCOUNT
    Account(),
  ];

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
            Text("Hafizh")
          ],
        ),
        actions: [
          Image.asset(
            'assets/images/profile.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
      body: showWidhet[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[900],
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
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
}
