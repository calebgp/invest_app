import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:invest_app/components/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Row(
          children: [
            const Gap(15),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(
                "icons/menu.svg",
              ),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset(
                  "icons/notification.svg",
                ),
              ),
              const Gap(15),
            ],
          ),
        ],
        leadingWidth: 70,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 30,
              bottom: 34,
            ),
            child: Text(
              'Welcome, Jessie.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Container(
              width: 354,
              height: 125,
              decoration: ShapeDecoration(
                gradient: const LinearGradient(
                  begin: Alignment(
                    -1.00,
                    -0.01,
                  ),
                  end: Alignment(
                    1,
                    0.01,
                  ),
                  colors: [
                    Color(0xFF30A078),
                    Color(0xFF31A05F),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  const Positioned(
                    left: 30,
                    top: 60,
                    child: Text(
                      'N203,935',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 30,
                    top: 30,
                    child: SizedBox(
                      width: 318,
                      child: Text(
                        'Your total asset portfolio',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 219,
                    top: 63,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 125,
                        height: 40,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFFEFFFE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Invest now',
                            style: TextStyle(
                              color: Color(0xFF31A078),
                              fontSize: 14,
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Gap(
            40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 221,
                  child: Text(
                    'Best Plans',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w700,
                      height: 0.06,
                      letterSpacing: 0.80,
                    ),
                  ),
                ),
                SizedBox(
                  width: 144,
                  child: Text(
                    'See All →',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xFFFE555D),
                      fontSize: 18,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 0.09,
                      letterSpacing: 0.80,
                    ),
                  ),
                )
              ],
            ),
          ),
          const Gap(20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                MyAsset(
                  onPressed: () {},
                  colors: const [
                    Color(0xFFF0C635),
                    Color(0xFFD88F38),
                  ],
                  path: "gold.png",
                  plan: "Gold",
                  returns: "30",
                ),
                MyAsset(
                  onPressed: () {},
                  colors: const [
                    Color(0xFFC9C9C9),
                    Color(0xFF969696),
                  ],
                  path: "silver.png",
                  plan: "Silver",
                  returns: "60",
                ),
                MyAsset(
                  onPressed: () {},
                  colors: const [
                    Color(0xFFB98CF3),
                    Color(0xFF605EE2),
                  ],
                  path: "platinum.png",
                  plan: "Platinum",
                  returns: "90",
                  opacity: 0.2,
                ),
              ],
            ),
          ),
          const Gap(40),
          const Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Investment Guide',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                height: 0.06,
                letterSpacing: 0.80,
              ),
            ),
          ),
          const Gap(20),
          const GuideWidget(
            title: 'Basic type of investments',
            subtitle:
                'This is how you set your foot for 2020 Stock market recession. What’s next...',
            path: "guide1.jpg",
          ),
          const Gap(15),
          Center(
            child: Container(
              width: 346,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color.fromARGB(188, 74, 74, 74),
                  ),
                ),
              ),
            ),
          ),
          const GuideWidget(
            title: "How much can you start wit..",
            subtitle:
                "What do you like to see? It’s a very different market from 2018. The way...",
            path: "guide2.jpg",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset(
                "icons/home.svg",
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "icons/search.svg",
                ),
              ),
              label: "Product"),
          BottomNavigationBarItem(
              icon: SizedBox(
                height: 24,
                width: 24,
                child: SvgPicture.asset(
                  "icons/transaction.svg",
                ),
              ),
              label: "Transaction"),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 24,
              width: 24,
              child: SvgPicture.asset("icons/account.svg"),
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
