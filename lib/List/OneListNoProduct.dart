import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Product/AddProduct.dart';
import 'Edit_List.dart';

class OneListNoProduct extends StatefulWidget {
  const OneListNoProduct({super.key});

  @override
  State<OneListNoProduct> createState() => _OneListNoProductState();
}

class _OneListNoProductState extends State<OneListNoProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          margin: const EdgeInsets.only(top: 50),
          width: MediaQuery.of(context).size.width,  // Remove the 'context' argument here
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/Back.svg',
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                width: 10,
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

              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: IconButton(
                  icon: SvgPicture.asset(
                    'assets/More (1).svg',
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>EditList()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Text(
                  "To buy later",
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
                          builder: (context) => AddProduct()),
                    );
                  },
                  child: Text(
                    "Add product",
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
              "List empty",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8E8E93),
              ),
            ),
          ),
        ),
      ]),
    );

  }
}
