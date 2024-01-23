// NoTrash.dart

import 'package:flutter/material.dart';

import '../BottomNavigationBarWidget.dart';
import '../List/NoList.dart';
import '../Setting/Settings.dart';
import 'Trash_Available.dart';



class NoTrash extends StatefulWidget {
  const NoTrash({Key? key}) : super(key: key);

  @override
  State<NoTrash> createState() => _NoTrashState();
}

class _NoTrashState extends State<NoTrash> {
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Trash_Available(),
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
      bottomNavigationBar: BottomNavigationBarWidget(
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
            if (_currentIndex == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListWidget(),
                ),
              );
            }
            if (_currentIndex == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ),
              );
            }
          });
        },
      ),
    );
  }
}
