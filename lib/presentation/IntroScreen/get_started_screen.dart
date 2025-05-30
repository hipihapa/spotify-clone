import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/ChooseModeScreen/choose_mode_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBG),
                fit: BoxFit.fill,
              ),
            ),
          ),

          Container(color: Colors.black.withOpacity(0.15)),

          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                Spacer(),
                Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 21),
                Text(
                  "A sleek music app to stream, discover, and enjoy your favorite songs anytime online or offline.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 20),
                BasicAppButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ChooseModeScreen(),
                      ),
                    );
                  },
                  title: "Get Started",
                  height: 80,
                ),

                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
