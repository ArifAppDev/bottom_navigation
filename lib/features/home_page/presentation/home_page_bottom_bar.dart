import 'package:flutter/material.dart';
import 'package:practice_app/asset_helpers/app_colors.dart';
import 'package:practice_app/features/add/presentation/add_screen.dart';

import 'package:practice_app/features/home/presentation/home_screen.dart';
import 'package:practice_app/features/profile/presentation/profile_screen.dart';
import 'package:practice_app/provider/bottom_nav_provider.dart';
import 'package:provider/provider.dart';

class HomepageBottombar extends StatelessWidget {
  const HomepageBottombar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [HomeScreen(), AddScreen(), ProfileScreen()];
    return Scaffold(
      body: Consumer<BottomNavProvider>(
        builder: (context, navProvider, child) {
          return pages[navProvider.selectedIndex];
        },
      ),

      bottomNavigationBar: Consumer<BottomNavProvider>(
        builder: (context, navProvider, child) {
          return BottomNavigationBar(
            currentIndex: navProvider.selectedIndex,
            onTap: navProvider.navigateBottomBar,
            backgroundColor: AppColor.cffffff,

            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColor.c4db8ff,
            unselectedItemColor: AppColor.c000000,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
