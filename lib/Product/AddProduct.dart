import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios,
                        color: Color(0xFF5856D6), size: 24,
                    ),
                    onPressed: () {
                      // Add your back button logic here
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 16),
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
          const SizedBox(height: 30),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 68, // Adjust the height as needed
            decoration: const BoxDecoration(
              color: Color(0xFFF8F8F8EB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 50, // Adjust the width of the search icon container
                  child: const Icon(
                    Icons.search,
                    color: Color(0xFF8E8E93),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
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
                  width: 50, // Adjust the width of the voice recording icon container
                  child: const Icon(
                    Icons.mic,
                    color: Color(0xFF8E8E93),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            height: 29,
            child: Row(
              children: [
                // Container for "Popular" with a different background
                Container(
                  padding: const EdgeInsets.only(left:100.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5856D6), // Background color for "Popular"
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(0.0),
                      bottomLeft: Radius.circular(0.0),
                    ),
                  ),
                  child: const Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),

                  ),
                ),

                // Spacer to separate the containers
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(right:100.0),
                  decoration: const BoxDecoration(
                   // Background color for "Catalog"
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                    ),
                  ),
                  child: const Text(
                    'Catalog',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFF5856D6),
                width: 3,
              ),
            ),
          )


        ],
      ),
    );
  }
}
