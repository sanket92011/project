import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/projects.dart';
import 'package:project/widgets/project_card.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  TextEditingController searchController = TextEditingController();
  List<Map<String, dynamic>> filteredProjects = [];

  @override
  void initState() {
    super.initState();
    filteredProjects = projects;
  }

  void _filterProjects() {
    String query = searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        filteredProjects = projects;
      } else {
        filteredProjects = projects.where((project) {
          String title = project['title'].toString().toLowerCase();
          return title.contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                  onTap: _filterProjects,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: SvgPicture.asset("assets/images/search.svg"),
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                hintText: "Search a project",
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0XFFE0E0E0)),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: filteredProjects.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: ProjectCard(
                      desImage: filteredProjects[index]['icon'],
                      title: filteredProjects[index]['title'].toString(),
                      desText: filteredProjects[index]['language'].toString(),
                      hintText: filteredProjects[index]['author'].toString(),
                      image: filteredProjects[index]['image'].toString(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
