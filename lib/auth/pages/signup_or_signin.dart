import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),

          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),

          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(AppImages.authBG),
          ),

          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo),
                SizedBox(height: 20),
                Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    // color: Colors.white,
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Text(
                    "Spotify is a proprietary music streaming service that gives you access to millions of songs and podcasts.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.grey, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: BasicAppButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupOrSignin(),
                              ),
                            );
                          },
                          title: "Register",
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          style: ButtonStyle(
                            overlayColor: WidgetStateProperty.all(
                              Colors.transparent,
                            ),
                            splashFactory: NoSplash.splashFactory,
                            minimumSize: WidgetStateProperty.all(
                              Size.fromHeight(80),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupOrSignin(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          // title: "Sign In",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
