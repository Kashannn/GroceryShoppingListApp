import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditOneProduct extends StatefulWidget {
  const EditOneProduct({Key? key}) : super(key: key);

  @override
  State<EditOneProduct> createState() => _EditOneProductState();
}

class _EditOneProductState extends State<EditOneProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Color(0xFF5856D6),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(left: 16, bottom: 16, right: 16, top: 50),
            child: Row(
              children: [
                Text(
                  "Cancel",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                Text(
                  "Done",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFF5856D6),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(left: 16, bottom: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "item Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Apples",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color(0xFF5856D6),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.only(left: 16, bottom: 16, right: 16),
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 101,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  minimumSize: Size(50, 40),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/Apple.svg',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Fruits',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 16, bottom: 16, right: 16,top: 16),
            height: 56,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                ),
              ),
            child:Row(
              children: [
                Text(
                    "Qty",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    )
                ),
                Spacer(),
                Text(
                    "5",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    )
                ),
                Spacer(),
                Container(
                  child:SvgPicture.asset(
                    'assets/Stepper.svg',
                    height: 30,
                    width: 30,
                  ),
                )
              ],
            )

          ),
          Container(
            width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 16, bottom: 16, right: 16,top: 16),
            height: 56,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                ),
              ),
              child:Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  )
              )
          ),
          Container(
            width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(left: 16, bottom: 16, right: 16,top: 16),
            height: 56,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black, // Set the border color
                    width: 1.0, // Set the border width
                  ),
                ),
              ),
              child:Text(
                  "Note",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  )
              )
          ),
        ],
      ),
    );
  }
}
