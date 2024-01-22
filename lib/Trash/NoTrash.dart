import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Trash_Available.dart';


class NoTrash extends StatefulWidget {
  const NoTrash({Key? key}) : super(key: key);

  @override
  State<NoTrash> createState() => _NoTrashState();
}

class _NoTrashState extends State<NoTrash> {
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
                          builder: (context) => Trash_Available(), // Removed 'const'
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
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
Widget buildBottomNavigationBar() {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    items: [
      buildBottomNavigationBarItem(
        iconPath: 'assets/List.svg',
        label: "Lists",
      ),
      buildBottomNavigationBarItem(
        iconPath: 'assets/Trash.svg',
        label: "Trash",
      ),
      buildBottomNavigationBarItem(
        iconPath: 'assets/Setting.svg',
        label: "Setting",
      ),
    ],
  );
}

BottomNavigationBarItem buildBottomNavigationBarItem({
  required String iconPath,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      iconPath,
      width: 32,
      height: 32,
    ),
    label: label,
  );
}
