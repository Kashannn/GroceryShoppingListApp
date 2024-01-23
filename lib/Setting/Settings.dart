import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Trash/NoTrash.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {
                    // Handle image picker action
                  },
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.grey[300],
                        child: Icon(
                          Icons.camera_alt,
                          size: 40,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Shawn Howard',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                      SvgPicture.asset(
                        'assets/Chevron_right.svg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    "notifications",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Send Push-notification",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.3), // Adjust the spacing between text and SVG as needed
                      SvgPicture.asset(
                        'assets/Native Off.svg',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              width: MediaQuery.of(context).size.width,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 10),
                  child: Text(
                    "support",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ReUseCode(
              text: 'Privacy Policy',
              color: Colors.white, // Set your desired background color
            ),
          ),
          Expanded(
            flex: 1,
            child: ReUseCode(text: 'Contact support', color: Colors.white),
          ),
          Expanded(
            flex: 1,
            child: ReUseCode(text: 'FAQs', color: Colors.white),
          ),
          Expanded(
            flex: 1,
            child: ReUseCode(
              text: 'Send feedback',
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: ReUseCode(
              text: 'general',
              color: Colors.grey[200]!,
            ),
          ),
          Expanded(
            flex: 1,
            child: ReUseCode(
                text: 'Language', color: Colors.white, Language: 'English(US)'),
          ),
        ],
      ),



    );
  }

  Widget ReUseCode({
    required String text,
    required Color color,
    String? Language,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[400]!,
          ),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          if (Language != null)
            Text(
              Language,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 10),
            child: GestureDetector(
              onTap: () {
                // Handle the gesture
              },
              child: SvgPicture.asset(
                'assets/Chevron_right.svg',
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
