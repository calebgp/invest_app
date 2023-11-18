import 'package:flutter/material.dart';
import 'package:invest_app/screens/home.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const MyTextButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (c) => const HomePage(),
          ),
        );
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF31A062),
          fontSize: 17,
          fontWeight: FontWeight.w600,
          height: 0.08,
        ),
      ),
    );
  }
}
