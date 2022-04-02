import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_welfare/screens/dashboard/dashboard_provider.dart';
import 'package:student_welfare/widgets/bottom_navigation_button.dart';

class CustomBottomNavigationbar extends StatefulWidget {
  const CustomBottomNavigationbar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationbarState createState() =>
      _CustomBottomNavigationbarState();
}

class _CustomBottomNavigationbarState extends State<CustomBottomNavigationbar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<DashboardProvider>(context, listen: false);
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      notchMargin: 5,
      // elevation: 0,
      color: const Color(0xFFFFFFFF),
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  index = 0;
                });
                notifier.setIndex(0);
              },
              child: BottomNavigationarButton(
                title: 'Home',
                currentIndex: index,
                thisIndex: 0,
                icon: Icons.home,
              ),
              minWidth: 30,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  index = 1;
                });
                notifier.setIndex(1);
                // Navigator.pushNamed(context, '/proposalowner');
              },
              child: BottomNavigationarButton(
                title: 'Courses',
                currentIndex: index,
                thisIndex: 1,
                icon: Icons.book,
              ),
              minWidth: 30,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  index = 2;
                });
                notifier.setIndex(2);
              },
              child: BottomNavigationarButton(
                title: 'Teachers',
                currentIndex: index,
                thisIndex: 2,
                icon: Icons.people,
              ),
              minWidth: 30,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  index = 3;
                });
                notifier.setIndex(3);
              },
              child: BottomNavigationarButton(
                title: 'Health',
                currentIndex: index,
                thisIndex: 3,
                icon: Icons.health_and_safety,
              ),
              minWidth: 30,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  index = 4;
                });
                notifier.setIndex(4);
              },
              child: BottomNavigationarButton(
                title: 'Contact',
                currentIndex: index,
                thisIndex: 4,
                icon: Icons.contact_support,
              ),
              minWidth: 30,
            ),
          ],
        ),
      ),
    );
  }
}
