import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class Ticket extends StatelessWidget {
  const Ticket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}

Widget _buildLeft() {
  return Container(
    padding: const EdgeInsets.all(15),
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
    child: const Center(
      child: Icon(
        Icons.album_rounded,
        size: 40,
      ),
    ),
  );
}
