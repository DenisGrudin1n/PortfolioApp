import 'package:flutter/material.dart';
import 'package:portfolioapp/constants/constants.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Flutter Mobile\nDeveloper",
                style: TextStyle(
                  color: kLight,
                  fontWeight: boldFontWeight,
                  fontSize: 60,
                  height: 1.1,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Hi, I`m Denis. A passionate mobile developer\nfrom Uzhhgorod, Ukraine.\n",
                style: TextStyle(
                  color: kLight,
                  fontWeight: mediumFontWeight,
                  fontSize: 22,
                  height: 1.7,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: yellowSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Download CV",
                        style: TextStyle(
                          color: kLight,
                          fontWeight: boldFontWeight,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 250,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: yellowSecondary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Get in touch",
                        style: TextStyle(
                          color: kLight,
                          fontWeight: boldFontWeight,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          CircleAvatar(
            radius: screenWidth / 7.5,
            backgroundImage: const AssetImage(
              "assets/me.png",
            ),
          ),
        ],
      ),
    );
  }
}