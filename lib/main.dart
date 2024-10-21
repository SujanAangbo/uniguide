import 'package:flutter/material.dart';
import 'package:uniguide/core/app_theme.dart';
import 'package:uniguide/presentation/auth/login/login_page.dart';
import 'package:uniguide/presentation/auth/onboarding/onboarding_page.dart';
import 'package:uniguide/presentation/auth/otp/otp_page.dart';
import 'package:uniguide/presentation/congratulation/congratulation_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Uni Guide',
      theme: AppTheme.lightTheme,
      home: CongratulationPage(
        message:
            "You have successfully registered as user.\nThankyou for choosing us.",
        primaryButtonPressed: () {},
        hasSecondary: true,
        secondaryButtonText: 'Go to Home',
        secondaryButtonPressed: () {},
      ),
    );
  }
}
