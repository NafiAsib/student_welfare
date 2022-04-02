import 'package:flutter/material.dart';

class BottomNavigationarButton extends StatelessWidget {
  final String title;
  final int currentIndex;
  final int thisIndex;
  final IconData icon;
  const BottomNavigationarButton({
    Key? key,
    required this.title,
    required this.currentIndex,
    required this.thisIndex,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        currentIndex == thisIndex
            ? Container(
                width: 25,
                height: 5,
                decoration: const BoxDecoration(
                  color: Color(0xFF406882),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              )
            : const SizedBox(
                width: 25,
                height: 5,
              ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Icon(
              icon,
              color: currentIndex == thisIndex
                  ? const Color(0xFF406882)
                  : const Color(0xFFD6E5FA),
            ),
            Text(
              title,
              style: TextStyle(
                color: currentIndex == thisIndex
                    ? const Color(0xFF406882)
                    : const Color(0xFFD6E5FA),
                fontSize: 10.0,
              ),
            )
          ],
        )
      ],
    );
  }
}
