import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'NoTrash.dart';
import 'Trash_Manage.dart';

class Trash_Available extends StatefulWidget {
  const Trash_Available({Key? key}) : super(key: key);

  @override
  State<Trash_Available> createState() => _Trash_AvailableState();
}

class _Trash_AvailableState extends State<Trash_Available> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, bottom: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Trash_Manage(), // Removed 'const'
                        ),
                      );
                    },
                    child: Text(
                      "Trash",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 68,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8EB),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // Align elements with spacing
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16),
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF524C8C),
                      ),
                      child: SvgPicture.asset(
                        'assets/Basket.svg',
                        color: Colors.white,
                      ),
                    ),

                    // Text "To buy later"
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "To buy later",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/person.png'),
                    ),
                    Positioned(
                      right:
                          10, // Adjust right position for partial overlap without clipping
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/person2.png'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),

    );
  }
}
