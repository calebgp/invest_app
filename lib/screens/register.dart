import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:invest_app/components/index.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                size: 18,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              'Create an account',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Gap(8),
          const Text(
            'Invest and double your income now',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF4F4F4F),
              fontSize: 17,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w600,
              height: 0.08,
            ),
          ),
          const Gap(85),
          SizedBox(
            height: 65,
            width: 340,
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w100,
              ),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                label: const Text(
                  'Full name',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
                    height: 0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0.50,
                    color: Color(0xFF828282),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const Gap(18),
          SizedBox(
            height: 65,
            width: 340,
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w100,
              ),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                label: const Text(
                  'Email address',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
                    height: 0,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0.50,
                    color: Color(0xFF828282),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const Gap(18),
          SizedBox(
            height: 65,
            width: 340,
            child: TextField(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w100,
              ),
              textAlign: TextAlign.left,
              decoration: InputDecoration(
                label: const Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xFF828282),
                    fontSize: 17,
                    fontWeight: FontWeight.w100,
                    height: 0,
                  ),
                ),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 0.50,
                    color: Color(0xFF828282),
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          const Gap(18),
          RoundedButton(
            text: "Create account",
            onPressed: () {},
          ),
          const Gap(44),
          MyTextButton(
            text: "Already have an account?",
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
