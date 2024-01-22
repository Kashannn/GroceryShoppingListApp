import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/Back.svg',
                    height: 24,
                    width: 24,
                  ),
                  onPressed: () {
                    // Add navigation logic here
                  },
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10),
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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "Language",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
          Expanded(
            child: ListView(
              children: [
                AllLanguage(
                  text: "English(United States)",
                  text2: "English",
                ),
                AllLanguage(text: "Afrikaans", text2: "Afrikaans"),
                AllLanguage(
                  text: "Bahasa Indonesia",
                  text2: "Indonesia",
                ),
                AllLanguage(text: "Bahasa Melayu", text2: "Malay"),
                AllLanguage(text: "Dansk", text2: "Danish"),
                AllLanguage(text: "Deutsch", text2: "German"),
                AllLanguage(text: "English (UK)", text2: "English"),
                AllLanguage(
                  text: "Español (España)",
                  text2: "Spanish",
                ),
                AllLanguage(
                  text: "Español (América Latino)",
                  text2: "Spanish",
                ),
                AllLanguage(text: "Filipino", text2: "Filipinos"),
                AllLanguage(
                  text: "Français (Canada)",
                  text2: "French",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget AllLanguage({
    required String text,
    required String text2,
  }) {
    return GestureDetector(
      onTap: () {
        // Handle the tap event here, you can implement logic to select values.
        print('Container tapped!');
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color(0xFFE5E5E5),
            ),
          ),
        ),
        margin: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xFF8E8E93),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
