import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

List imgList = [
  'Tix.png',
  'Tix2.png',
  'Tix3.png',
];

class _HomePageState extends State<HomePage> {
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  late int index;

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
                  children: <Widget>[
                    Icon(
                      Icons.add_location_alt_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      "  Bogor ",
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

                // Row(
                //   children: <Widget>[
                //     ClipRRect(
                //       borderRadius: BorderRadius.circular(15),
                //       child: Row(
                //         children: [
                //           Image.asset(
                //             'assets/images/Tix.png',
                //             height: 100,
                //           ),
                //         ],
                //       ),
                //     )
                //   ],
                // ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: Container(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlayCurve: Curves.fastOutSlowIn,
                              pauseAutoPlayOnTouch: true,
                              enlargeCenterPage: true,
                              viewportFraction: 0.8,
                              scrollDirection: Axis.horizontal,
                              onPageChanged: (index, reason) {
                                setState(
                                  () {
                                    var _currentIndex = index;
                                  },
                                );
                              },
                            ),
                            items: imgList.map((imgUrl) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height,
                                    child: Container(
                                      child: Image.asset(
                                        'assets/images/Tix.png',
                                      ),
                                    ),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),

    // INDEX KE - 1 -> TICKET
    Container(
      color: Colors.blueGrey[900],
      child: Center(
        child: Text(
          "TICKET",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
    // MOVIE DETAIL
    // Container(
    //   color: Colors.blueGrey[900],
    //   child: Center(
    //     child: Column(
    //       children: [
    //         Image.asset(
    //           'assets/images/Shang-Chi.png',
    //           height: 250,
    //         ),
    //         SizedBox(height: 10),
    //         Text(
    //           "SHANG-CHI AND THE LEGEND",
    //           style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 16,
    //               fontWeight: FontWeight.bold),
    //         ),
    //         Text(
    //           " OF THE TEN RINGS",
    //           style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 16,
    //               fontWeight: FontWeight.bold),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Text(
    //           "09:00 WIB | 18 NOV 2021",
    //           style: TextStyle(color: Colors.white),
    //         ),
    //         Text(
    //           "Transmart MX Mall XXI",
    //           style: TextStyle(color: Colors.white),
    //         ),
    //         Text(
    //           "E8 ; E7",
    //           style: TextStyle(color: Colors.white),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Image.asset(
    //           'assets/images/Barcode.png',
    //         ),
    //         SizedBox(
    //           height: 10,
    //         ),
    //         ElevatedButton(
    //           onPressed: () {
    //             showDialog(
    //                 context: context,
    //                 builder: (context) => AlertDialog(
    //                       shape: RoundedRectangleBorder(
    //                           borderRadius: BorderRadius.circular(15)),
    //                       title: Text("Confirmation Box"),
    //                       content: Text("Do you want to cancel the order ?"),
    //                       actions: [
    //                         ElevatedButton(
    //                           onPressed: () {},
    //                           child: Text("Yes"),
    //                         ),
    //                         ElevatedButton(
    //                           onPressed: () {},
    //                           child: Text("No"),
    //                         ),
    //                       ],
    //                     ));
    //           },
    //           child: Text(
    //             "Cancel order",
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // ),

    // INDEX KE - 2 -> ACCOUNT
    Container(
      color: Colors.blueGrey[900],
      child: ListView(
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(
                    'assets/images/profile.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sirajhafizh",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "sirajh611@gmail.com",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
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
        ],
      ),
    ),
  ];
  @override
  void initState() {
    index = 0;
    super.initState();
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

void setState(Null Function() param0) {}
