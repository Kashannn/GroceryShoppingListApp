import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Added_Product_Catalog.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    icon: SvgPicture.asset(
                      'assets/Back.svg',
                      height: 24,
                      width: 24,
                    ),
                    onPressed: () {},
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Back",
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
              margin: const EdgeInsets.all(10),
              height: 68, // Adjust the height as needed
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8EB),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    child: SvgPicture.asset(
                      'assets/Search.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Add Product",
                          hintStyle: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8E8E93),
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    child: SvgPicture.asset(
                      'assets/Microphone.svg',
                      height: 24,
                      width: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Handle the onTap event for the "Popular" container
                    print('Popular tapped');
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20),
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF5856D6),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.0),
                        bottomLeft: Radius.circular(5.0),
                      ),
                      border: Border.all(
                        color: Color(0xFFF5856D6),
                        width: 3,
                      ),
                    ),
                    child: Text(
                      'Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                GestureDetector(
                  onTap: () {
                    // Handle the onTap event for the "Catalog" container
                    print('Catalog tapped');
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.0),
                      ),
                      border: Border.all(
                        color: Color(0xFFF5856D6),
                        width: 3,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                            builder: (context) =>Added_Product_Catalog()));
                      },
                    child: Text(
                    'Catalog',
                    style: TextStyle(
                      color: Color(0xFFF5856D6),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  ),
                ),
                )],
            ),
            SizedBox(height: 20),
            Column(
              children: [
                addIcon('Apples in Fruits'),
                addIcon('Avocado in Fruits'),
                addIcon('Coffee Beans in Coffee'),
                addIcon('Still Water in Beverages'),
                addIcon('Carrots in Vegetables'),
                addIcon('Spinach (fresh) in Vegetables'),
                addIcon('Jeans in Clothes & Shoes'),
                addIcon('Sneakers in Clothes & Shoes'),
                addIcon('Micellar Water in Personal '),
                addIcon('Shampoo in Personal '),
                addIcon('Aspirin in Pharmacy'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget addIcon(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color(0xFFF5856D6),
          width: 3,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/Add.svg',
            height: 24,
            width: 24,
            alignment: Alignment.topLeft,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
