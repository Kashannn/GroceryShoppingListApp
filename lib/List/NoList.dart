import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AddList.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
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
                  child: Text(
                    "Lists",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddList()),
                      );
                    },
                    child: Text(
                      "Add list",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5856D6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                "No List",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8E8E93),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/List.svg',
              width: 32,
              height: 32,
            ),
            label: "Lists",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Trash_icon.svg', // Assuming you want the same icon for other items
              width: 32,
              height: 32,
            ),
            label: "Trash", // Provide a meaningful label for the second item
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/Setting.svg', // Adjust the path if needed for a different icon
              width: 32,
              height: 32,
            ),
            label: "Setting", // Example label for the third item
          ),
        ],
      ),
    );
  }
}
