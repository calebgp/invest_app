import 'package:flutter/material.dart';

class MyAsset extends StatelessWidget {
  final String path;
  final List<Color> colors;
  final String returns;
  final String plan;
  final double? opacity;
  const MyAsset({
    super.key,
    required this.path,
    required this.colors,
    required this.returns,
    required this.plan,
    this.opacity = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Container(
        width: 134,
        height: 170,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(-0.42, -0.91),
            end: const Alignment(0.42, 0.91),
            colors: colors,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: -9,
              top: 11,
              child: Container(
                width: 201,
                height: 201,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/$path"),
                    fit: BoxFit.fill,
                    opacity: opacity!,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 20,
              child: SizedBox(
                width: 104,
                child: Text(
                  plan,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.08,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 37,
              child: SizedBox(
                width: 94,
                child: Text(
                  '$returns% return',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    height: 0.14,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 20,
              child: SizedBox(width: 24, height: 24),
            ),
          ],
        ),
      ),
    );
  }
}
