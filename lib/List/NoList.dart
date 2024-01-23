import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../BottomNavigationBarWidget.dart';
import '../Trash/Trash_Available.dart';
import 'AddList.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  int _currentIndex = 0;
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
      bottomNavigationBar:BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;

            if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Trash_Available(),
                ),
              );
            }
          });
        },
      ),
    );
  }
}
