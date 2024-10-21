import 'package:flutter/material.dart';
import 'package:uniguide/core/app_colors.dart';
import 'package:uniguide/core/widgets/primary_button.dart';

class CongratulationPage extends StatelessWidget {
  String title;
  String message;
  String primaryButtonText;
  VoidCallback primaryButtonPressed;
  bool hasSecondary;
  String secondaryButtonText;
  VoidCallback secondaryButtonPressed;

  CongratulationPage({
    super.key,
    this.title = "Congratulation!",
    required this.message,
    this.primaryButtonText = "Continue",
    required this.primaryButtonPressed,
    required this.hasSecondary,
    required this.secondaryButtonText,
    required this.secondaryButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.check,
                color: AppColors.primaryColor,
                size: 40,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                  ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 200,
              child: PrimaryButton(
                text: primaryButtonText,
                onPressed: primaryButtonPressed,
              ),
            ),
            const SizedBox(height: 24),
            LinkButton(
              text: secondaryButtonText,
              onPressed: secondaryButtonPressed,
            ),
          ],
        ),
      ),
    );
  }
}

class LinkButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const LinkButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              decoration: TextDecoration.underline,
              color: AppColors.primaryColor,
              decorationColor: AppColors.primaryColor,
              decorationThickness: 4,
              letterSpacing: 0.5,
            ),
      ),
    );
  }
}
