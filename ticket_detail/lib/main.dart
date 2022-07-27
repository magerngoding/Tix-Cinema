// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Ticket_detail(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Ticket_detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Tiket Detail"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Container(
        color: Colors.blueGrey[900],
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Shang-Chi.png',
                height: 250,
              ),
              SizedBox(height: 10),
              Text(
                "SHANG-CHI AND THE LEGEND OF\n                  THE TEN RINGS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "09:00 WIB | 18 NOV 2021",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "Transmart MX Mall XXI",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "E8 ; E7",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/images/Barcode.png',
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: Text("Confirmation Box"),
                      content: Text("Do you want to cancel the order ?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Yes"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("No"),
                        ),
                      ],
                    ),
                  );
                },
                child: Text(
                  "Cancel order",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
