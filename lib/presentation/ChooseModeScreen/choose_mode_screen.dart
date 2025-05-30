import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/auth/pages/signup_or_signin.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/ChooseModeScreen/bloc/theme_cubit.dart';
// import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.chooseModeBG),
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
                  "Choose Mode",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle dark mode selection
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.dark,
                            );
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  fit: BoxFit.none,
                                  AppVectors.darkMode,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Dark Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(width: 20),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Handle light mode selection
                            context.read<ThemeCubit>().updateTheme(
                              ThemeMode.light,
                            );
                          },
                          child: ClipOval(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  color: Color(0xff30393C).withOpacity(0.5),
                                  shape: BoxShape.circle,
                                ),
                                child: SvgPicture.asset(
                                  fit: BoxFit.none,
                                  AppVectors.lightMode,
                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Light Mode",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.grey,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 50),
                BasicAppButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupOrSignin(),
                      ),
                    );
                  },
                  title: "Continue",
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
