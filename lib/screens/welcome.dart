import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invest_app/components/index.dart';
import 'package:invest_app/screens/index.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "images/welcome.png",
            ),
          ),
          const Text(
            'Stay on top of your finance with us.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 34,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Gap(17),
          const Text(
            'We are your new financial Advisors\nto recommed the best investments for you.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4F4F4F),
              fontSize: 17,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Gap(80),
          RoundedButton(
            text: "Create Account",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => const RegisterPage(),
                ),
              );
            },
          ),
          const Gap(17),
          MyTextButton(
            text: "Login",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
