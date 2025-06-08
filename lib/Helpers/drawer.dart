import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:e_book_app/Helpers/utilities.dart'; // for AppColors

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  static const String imageUrl =
      // "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";
      "https://avatars.githubusercontent.com/u/106000779?s=96&v=4";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: AppColors.orangeColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Vishesha Sanadhya"),
                accountEmail: const Text("sanadhya2003@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.person,
                            size: 40, color: Colors.grey);
                      },
                    ),
                  ),
                ),
                decoration: const BoxDecoration(color: AppColors.orangeColor),
              ),
            ),
            drawerTile(
              icon: CupertinoIcons.home,
              title: "Home",
              onTap: () => Navigator.pop(context),
            ),
            drawerTile(
              icon: Icons.book,
              title: "Shlokas",
              onTap: () {
                Navigator.pop(context);
                // Navigate to shlokas page if needed
              },
            ),
            drawerTile(
              icon: CupertinoIcons.profile_circled,
              title: "Profile",
              onTap: () => Navigator.pop(context),
            ),
            drawerTile(
              icon: CupertinoIcons.info_circle,
              title: "About Us",
              onTap: () => Navigator.pop(context),
            ),
            drawerTile(
              icon: CupertinoIcons.mail,
              title: "Email Me",
              onTap: () => Navigator.pop(context),
            ),
            const Divider(color: Colors.white70),
            drawerTile(
              icon: Icons.logout,
              title: "Logout",
              onTap: () {
                Navigator.pop(context);
                // Implement logout or navigation here
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget drawerTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
      onTap: onTap,
    );
  }
}
