import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../Setting/Settings.dart';
import '../Trash/NoTrash.dart';
import 'OneListNoProduct.dart';

class ListManage extends StatefulWidget {
  const ListManage({Key? key}) : super(key: key);

  @override
  State<ListManage> createState() => _ListManageState();
}

class _ListManageState extends State<ListManage> {
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
                  padding: EdgeInsets.only(left: 16, bottom: 16),
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
                  padding: EdgeInsets.only(right: 16, bottom: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OneListNoProduct(),
                        ),
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 68, // Adjust the height as needed
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFF8F8F8EB),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xffa1a1a1),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/More.svg',
                          width: 20,
                          height: 20,
                        ),
                        const Text(
                          "More",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff007aff),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/Share.svg',
                          width: 20,
                          height: 20,
                        ),
                        const Text(
                          "Share",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xfff43425),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/Delete.svg',
                          width: 20,
                          height: 20,
                        ),
                        const Text(
                          "Delete",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 68,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F8F8EB),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        width: 20, // Adjust the width as needed
                        height: 20, // Adjust the height as needed
                      ),
                    ),
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
                      right: 10,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/person2.png'),
                      ),
                    ),
                  ],
                ),
              ],
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
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;

            if (_currentIndex == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NoTrash(),
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
