import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);
  // static const padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        // color: ColorResources.DRAWER_BG,
        child: ListView(
          // padding: padding,
          children: [
            const SizedBox(height: 20),
            buildHeader(
              name: 'Dr. Mahfuzulhoq Chowdhury',
              email: 'mahfuz@cuet.ac.bd',
              imgURL: 'assets/images/placeholder-avatar.png',
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
            buildMenuItem(
              text: 'Profile',
              icon: Icons.account_circle,
              onClicked: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            // buildMenuItem(
            //   text: 'My posted items',
            //   icon: Icons.format_list_bulleted,
            //   // onClicked: () => Navigator.pushNamed(context, '/'),
            //   onClicked: () {
            //     Navigator.pop(context);
            //     Navigator.pushNamed(context, '/my-items', arguments: user);
            //   },
            // ),
            buildMenuItem(
              text: 'Log Out',
              icon: Icons.logout_rounded,
              // onClicked: () => Navigator.pushNamed(context, '/'),
              onClicked: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: onClicked,
    );
  }

  Widget buildHeader({
    required String? imgURL,
    required String? name,
    required String? email,
  }) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(imgURL!),
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                ),
                const SizedBox(height: 4),
                Text(
                  email!,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
