import 'package:flutter/material.dart';

class GuideWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String path;
  const GuideWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Card(
        elevation: 0,
        child: ListTile(
          tileColor: Colors.white,
          title: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF4F4F4F),
              fontSize: 18,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.80,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(
              color: Color(0xFF474747),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.80,
            ),
          ),
          trailing: Container(
            width: 61,
            height: 61,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage("images/$path"),
                fit: BoxFit.fill,
              ),
              shape: const OvalBorder(
                eccentricity: 0.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
