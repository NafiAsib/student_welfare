import 'package:flutter/material.dart';
import 'package:student_welfare/widgets/rating_widget.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: InkWell(
          onTap: () {
            // Navigator.pushNamed(context, '/help-details');
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Computer Networks',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.tag,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Row(
                        children: const [
                          Text(
                            'CSE-312',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // ),
                      const Icon(
                        Icons.people,
                        size: 20,
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Dr. Mahfuzulhoq Chowdhury',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          Text(
                            'Md. Rashadur Rahman',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xFFCBF1F5),
                      ),
                      color: const Color(0xFFE3FDFD),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Sessional',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RatingWidget(rating: 4),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
