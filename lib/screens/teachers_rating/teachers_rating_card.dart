import 'package:flutter/material.dart';
import 'package:student_welfare/widgets/rating_widget.dart';

class TeachersRatingCard extends StatelessWidget {
  const TeachersRatingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      // height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFF6998AB)),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 5,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF6998AB).withOpacity(0.5), width: 5),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(
              'assets/images/placeholder-avatar.png',
              height: 50,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Mahfuzulhoq Chowdhury',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
              Text(
                'Assistant Professor',
              ),
              RatingWidget(rating: 4),
              SizedBox(
                height: 12,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.phone,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '+880171XXXXXXX',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.mail_outline,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'mahfuz@cuet.ac.bd',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // Expanded(
          //   child: Align(
          //     alignment: Alignment.centerRight,
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.end,
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: const [
          //             Text(
          //               '+880171XXXXXXX',
          //               style: TextStyle(
          //                 fontSize: 13,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //             SizedBox(width: 5),
          //           ],
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.end,
          //           children: const [
          //             Text(
          //               'mahfuz@cuet.ac.bd',
          //               style: TextStyle(
          //                 fontSize: 13,
          //                 fontWeight: FontWeight.w500,
          //               ),
          //             ),
          //             SizedBox(width: 5),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
