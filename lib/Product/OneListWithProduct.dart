import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OneListWithProduct extends StatefulWidget {
  const OneListWithProduct({Key? key}) : super(key: key);

  @override
  State<OneListWithProduct> createState() =>
      _OneListWithProductState();
}

class _OneListWithProductState extends State<OneListWithProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 11,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/Back.svg"),
                ),
                Text(
                  "Back",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5856D6),
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/More (1).svg"),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 15,
            child: Row(
              children: [
                Text("To buy later",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                    )),
                Spacer(),
                Text(
                  "Add product",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF5856D6),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .end, // Aligns children to the end (right side)
              children: [
                Text(
                  "Shared with",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Stack(
                  children: [
                    Positioned(
                      child: SvgPicture.asset(
                        "assets/Ellipse.svg",
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      child: SvgPicture.asset(
                        "assets/Plus.svg",
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    width:
                    8), // Adjust the spacing between the Stack and the ClipOval containers
                ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xff4CD964),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/person.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                    width:
                    8), // Adjust the spacing between the ClipOval containers
                ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: const Color(0xff4CD964),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/person2.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ReUseCode(
            text: "Coffee, Tea & Cocoa",
            color: Color(0xFF5856D6),
          ),
          ReUseCode(
            text: "Matcha tea",
            color: Colors.black,
          ),
          ReUseCode(
            text: "Dairy",
            color: Color(0xFFFF9F0A),
          ),
          ReUseCode(
            text: "Yogurt",
            text2: "2",
            color: Colors.black,
            text3: "Activia",
          ),
          ReUseCode(
            text: "Fruits",
            color: Color(0xFF00EA96),
          ),
          ReUseCode(
            text: "Apples",
            text2: "5",
            color: Colors.black,
          ),
          ReUseCode(
            text: "Avocado",
            text2: "2",
            color: Colors.black,
            text3: "Hass",
            text4: "4.20",
          ),
          ReUseCode(
            text: "Personal Care & Beauty",
            color: Color(0xFFA11B64),
          ),
          ReUseCode(
            text: "Facial tissues",
            color: Colors.black,
          ),
          ReUseCode(
            text: "Foundation",
            text2: "1",
            color: Colors.black,
            text3: "Lancome Teint Idole Ultra Wear, shade 140",
          ),
          ReUseCode(
            text: "Pharmacy",
            color: Color(0xFFFF375F),
          ),
          ReUseCode(
            text: "Aspirin",
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  Widget ReUseCode({
    String? text,
    String? text2,
    String? text3,
    required Color color,
    String? text4,
  }) {
    return Container(
      margin: const EdgeInsets.only(top: 20,left: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 50, // Adjusted height
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "$text",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
              Spacer(),
              Text(
                text4 ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: color,
                ),
              ),
              Spacer(),
              Text(
                text2 ?? "",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF5856D6),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              text3 ?? "",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
