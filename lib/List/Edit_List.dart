import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ListAvailable.dart';

class EditList extends StatefulWidget {
  const EditList({Key? key}) : super(key: key);

  @override
  State<EditList> createState() => _EditListState();
}

class _EditListState extends State<EditList> {
  Color selectedColor = Colors.grey; // Initialize with a default color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Cancel',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ListAvailable()),
                          );
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),

                // Title text
                const Text(
                  'Edit List',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 12),
                const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 8),
                    hintText: "New list",
                    hintStyle: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF8E8E93),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                const Text(
                  'Color',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    for (Color color in [
                      const Color(0xFF047C52),
                      const Color(0xFF524C8C),
                      const Color(0xFFFFE200),
                      const Color(0xFF6E7972),
                      const Color(0xFFD23D33),
                      const Color(0xFFC1A386),
                    ])
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                        child: ReusableColorButton(
                          color: color,
                          isSelected: selectedColor == color,
                        ),
                      ),
                  ],
                ),
                Row(
                  children: [
                    for (Color color in [
                      const Color(0xFF64D2FF),
                      const Color(0xFFFF9F0A),
                      const Color(0xFFFFE200),
                      const Color(0xFFE1289B),
                      const Color(0xFFBF5AF2),
                      const Color(0xFF734230),
                    ])
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColor = color;
                          });
                        },
                        child: ReusableColorButton(
                          color: color,
                          isSelected: selectedColor == color,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Icon',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Document.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Basket .svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Sale.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Gift.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Heart.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Bowtie.svg',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Car.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Construcs.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Rose.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Glass.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Medkit.svg',
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Material(
                      shape: const CircleBorder(),
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/Education.svg',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableColorButton extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ReusableColorButton({required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Material(
          shape: const CircleBorder(),
          color: isSelected ? Colors.grey : color,
        ),
      ),
    );
  }
}
