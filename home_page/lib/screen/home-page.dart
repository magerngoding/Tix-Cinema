// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:home_page/dummy-data.dart';
import 'package:home_page/screen/movie-detail-6.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[900],
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Hello Hafizh",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Image.asset('assets/images/account.png'),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Icon(
                  Icons.add_location_alt_sharp,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                DropdownButton(
                  hint: Text(
                    "Malang city",
                    style: TextStyle(color: Colors.white),
                  ),
                  value: city,
                  items: listKota.map((value) {
                    return DropdownMenuItem(
                      child: Text(value),
                      value: value,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      city = value;
                    });
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: "Search Movie",
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  "Playing",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                Text(
                  " Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MovieDetail_6(),
                          ));
                    },
                    child: CarouselSlider(
                      items: [
                        Image.asset('assets/images/film1.png'),
                        Image.asset('assets/images/film2.png'),
                        Image.asset('assets/images/film3.png'),
                      ],
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.8,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:home_page/dummy-data.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("GFG Slider"),
//       ),
//       body: ListView(
//         children: [
//           CarouselSlider(
//             items: [
//               Image.asset('assets/images/film1.png'),
//               Image.asset('assets/images/film2.png'),
//               Image.asset('assets/images/film3.png'),
//             ],
//             options: CarouselOptions(
//               enlargeCenterPage: true,
//               enableInfiniteScroll: true,
//               viewportFraction: 0.8,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
