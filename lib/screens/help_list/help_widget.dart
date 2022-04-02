import 'package:flutter/material.dart';

class HelpWidget extends StatelessWidget {
  const HelpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Stack(
        children: [
          Container(
            // height: 130,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            decoration: BoxDecoration(
              color: const Color(0xFFFFFFFF),
              // border: Border.all(color: Color(0xFFFFFFFF)),
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
                Navigator.pushNamed(context, '/help-details');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Need help on Java Project',
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
                        children: const [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Shaheed Mohammad Shah Hall',
                            style: TextStyle(
                              fontSize: 13,
                              // color: ColorRes.subtitleTextColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.timer, size: 20),
                          SizedBox(width: 5),
                          Text(
                            '22 Jun 2021',
                            style: TextStyle(
                              fontSize: 13,
                              // color: ColorRes.subtitleTextColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 5,
              right: 2,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFCBF1F5),
                  ),
                  color: const Color(0xFFE3FDFD),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  'PAID',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ))
        ],
      ),
    );
  }
}
