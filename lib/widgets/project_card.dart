import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.title,
      required this.desText,
      required this.hintText,
      required this.image,
      required this.desImage});

  final String title;
  final String desText;
  final String hintText;
  final String image;
  final String desImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          side: BorderSide(color: Color(0XFFE0E0E0)),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Image.asset(image),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Expanded(
                    child: Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'ROBOTOBOLD',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Text(
                      desText,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'ROBOTO',
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      hintText,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontFamily: 'ROBOTOLIGHT',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(desImage),
            ),
          ],
        ),
      ),
    );
  }
}
