import 'package:flutter/material.dart';

class MyAsset extends StatelessWidget {
  const MyAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Container(
        width: 134,
        height: 170,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-0.42, -0.91),
            end: Alignment(0.42, 0.91),
            colors: [
              Color(0xFFF0C635),
              Color(0xFFD88F38),
            ],
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
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/201x201"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 20,
              child: SizedBox(
                width: 104,
                child: Text(
                  'Gold',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.w600,
                    height: 0.08,
                  ),
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 37,
              child: SizedBox(
                width: 94,
                child: Opacity(
                  opacity: 0.70,
                  child: Text(
                    '30% return',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w600,
                      height: 0.14,
                    ),
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
