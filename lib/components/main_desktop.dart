import 'package:flutter/material.dart';
import 'package:portfolioapp/constants/constants.dart';
import 'package:portfolioapp/services/download_service.dart';

class MainDesktop extends StatelessWidget {
  final VoidCallback? onContactButtonTap;

  const MainDesktop({super.key, required this.onContactButtonTap});

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
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: yellowSecondary),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        downloadCV();
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Download CV",
                            style: TextStyle(
                              color: yellowSecondary,
                              fontWeight: boldFontWeight,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.file_download_outlined,
                            color: yellowSecondary,
                            size: 28,
                          ),
                        ],
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
                      onPressed: onContactButtonTap,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get in touch",
                            style: TextStyle(
                              color: kLight,
                              fontWeight: boldFontWeight,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.chat_outlined,
                            color: kLight,
                            size: 25,
                          ),
                        ],
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
              "assets/avatars/me.png",
            ),
          ),
        ],
      ),
    );
  }
}
