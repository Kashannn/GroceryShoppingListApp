import 'package:flutter/material.dart';

class AddCategory extends StatefulWidget {
  const AddCategory({Key? key}) : super(key: key);

  @override
  State<AddCategory> createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  double get containerWidth => MediaQuery.of(context).size.width / 9;

  Widget buildIconRow(List<int> range) {
    return Row(
      children: [
        for (int i in range)
          Container(
            width: containerWidth,
            child: Image.asset(
              'assets/Icon/$i.png',
              height: 24,
              width: 24,
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5856D6),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "Done",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF5856D6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Add Category",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "New Category",
                hintStyle: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Icon",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                buildIconRow(List.generate(8, (i) => i + 1)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 9)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 17)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 25)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 33)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 34)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 42)),
                SizedBox(height: 20),
                buildIconRow(List.generate(8, (i) => i + 50)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
