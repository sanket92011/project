import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/pages/project_screen.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButton: SizedBox(
          width: 120,
          height: 45,
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text(
              "Filter",
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(Icons.filter_list, color: Colors.white),
            backgroundColor: const Color(0XFFDF5532),
            shape: const StadiumBorder(),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(height: 65),
                      const Text(
                        "Portfolio",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/images/bag.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:
                            SvgPicture.asset("assets/images/notification.svg"),
                      ),
                    ],
                  ),
                  const TabBar(
                    indicatorColor: Color(0XFFDF5532),
                    labelColor: Color(0XFFDF5532),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "Project",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "Saved",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "Shared",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          "Achievement",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        ProjectScreen(),
                        Scaffold(
                          backgroundColor: Colors.white,
                        ),
                        Scaffold(
                          backgroundColor: Colors.white,
                        ),
                        Scaffold(
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
