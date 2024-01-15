import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            width: MediaQuery.of(context).size.width,
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
                    onPressed: () {},
                  ),
                ),


              ],
            ),
          )
        ]));
  }
}
