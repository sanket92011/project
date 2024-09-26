import 'package:flutter/material.dart';
import 'package:project/pages/portfolio_page.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0XFFDF5532),
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/home.png",
                  color: Colors.grey,
                ),
              ),
              label: "Home",
              activeIcon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/home.png",
                  color: const Color(0XFFDF5532),
                ),
              )),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/Portfolio_filled.png",
                  color: Colors.grey,
                ),
              ),
              label: "Portfolio",
              activeIcon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset("assets/images/Portfolio_filled.png"),
              )),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/Input.png",
                  color: Colors.grey,
                ),
              ),
              label: "Input",
              activeIcon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/Input.png",
                  color: const Color(0XFFDF5532),
                ),
              )),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/profile.png",
                  color: Colors.grey,
                ),
              ),
              label: "Profile",
              activeIcon: SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(
                  "assets/images/profile.png",
                  color: const Color(0XFFDF5532),
                ),
              )),
        ],
      ),
      body: currentIndex == 1
          ? const PortfolioPage()
          : const Center(child: Text("Page")),
    );
  }
}
