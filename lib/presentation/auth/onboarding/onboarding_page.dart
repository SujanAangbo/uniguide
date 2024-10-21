import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uniguide/core/app_colors.dart';
import 'package:uniguide/presentation/auth/login/login_page.dart';
import 'package:uniguide/presentation/home/home_page.dart';
import '../../../core/widgets/primary_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    navigateToHomePage() {
      Navigator.pushAndRemoveUntil(context, LoginPage.route(), (route) => false);
    }

    navigateToNextOnBoarding() {
      if (_pageController.page == 2) {
        navigateToHomePage();
      } else {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 500),
          curve: const Split(0),
        );
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              children: [
                buildOnboardingUI(
                  context,
                  "assets/images/onboarding_1.png",
                  "Top Ranked Universities",
                  "Study global, Get more out of\nyour career.",
                ),
                buildOnboardingUI(
                  context,
                  "assets/images/onboarding_2.png",
                  "Online Consultation",
                  "Get online consultation from\nexperts to clarify your confusion.",
                ),
                buildOnboardingUI(
                  context,
                  "assets/images/onboarding_3.png",
                  "IELTS Course",
                  "Get online IELTS course to\nprepare for the IELTS test.",
                ),
              ],
            ),
            Align(
              alignment: const Alignment(0, 0.2),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors.primaryColor,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.9),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: navigateToHomePage,
                      child: Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                      height: 40,
                      child: PrimaryButton(
                        text: "Next",
                        onPressed: navigateToNextOnBoarding,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildOnboardingUI(
    BuildContext context,
    String image,
    String title,
    String description,
  ) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Text(
          title,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: AppColors.primaryColor,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
