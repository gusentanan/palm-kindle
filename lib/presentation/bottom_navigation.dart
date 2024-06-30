import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:palmkindle/presentation/home/home_page.dart';
import 'package:palmkindle/presentation/likes/likes_page.dart';
import 'package:palmkindle/themes/base_colors.dart';
import 'package:palmkindle/themes/base_text_style.dart';

@RoutePage()
class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  CustomBottomNavigationState createState() => CustomBottomNavigationState();
}

class CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  late Widget currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = currentTab == 0 ? const HomePage() : const LikesPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          PageStorage(
            bucket: bucket,
            child: currentScreen,
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          color: BaseColors.pmaIntense,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildBottomNavigationItem(
                icon: Icons.home_outlined,
                text: 'Home',
                isActive: currentTab == 0,
                onPressed: () {
                  setState(() {
                    currentScreen = const HomePage();
                    currentTab = 0;
                  });
                },
              ),
              Container(
                width: 1,
                height: 28,
                color: BaseColors.pmaDim,
              ),
              _buildBottomNavigationItem(
                icon: Icons.favorite_outline,
                text: 'Likes',
                isActive: currentTab == 1,
                onPressed: () {
                  setState(() {
                    currentScreen = const LikesPage();
                    currentTab = 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigationItem({
    required IconData icon,
    required String text,
    required bool isActive,
    required VoidCallback onPressed,
  }) {
    return MaterialButton(
      minWidth: 50,
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 24,
            color: isActive ? BaseColors.pmaDim : Colors.white.withOpacity(0.8),
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: BaseTextStyle.displayMedium.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isActive ? BaseColors.pmaDim : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
