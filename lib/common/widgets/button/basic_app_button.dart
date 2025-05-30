import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? title;
  final double? height;

  const BasicAppButton({super.key, this.onPressed, this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size.fromHeight(height ?? 80),
      ),
      child: Text(
        title ?? '',
        style: TextStyle(color: AppColors.lightBackground),
      ),
    );
  }
}
