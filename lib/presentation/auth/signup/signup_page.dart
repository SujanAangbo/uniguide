import 'package:flutter/material.dart';
import 'package:uniguide/core/app_colors.dart';
import 'package:uniguide/core/widgets/custom_checkbox.dart';
import 'package:uniguide/core/widgets/primary_button.dart';
import 'package:uniguide/presentation/auth/login/login_page.dart';

class SignupPage extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (context) => const SignupPage(),
      );

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  if (Navigator.canPop(context)) ...[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: AppColors.primaryColor,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(height: 4),
                  ],
                  const SizedBox(height: 10),
                  Align(
                    child: Text(
                      "uniguide",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                              ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Create an account",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: const InputDecoration(
                      hintText: "Full Name",
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: const InputDecoration(
                      hintText: "Phone",
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: const InputDecoration(
                      hintText: "Email",
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    style: Theme.of(context).textTheme.titleSmall,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility_outlined),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  PrimaryButton(
                    text: "Sign In",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: Divider(
                          endIndent: 10,
                        ),
                      ),
                      Text(
                        "or continue with",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        width: 100,
                        child: Divider(
                          indent: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultIconButton(
                        image: "assets/images/google.png",
                        onPressed: () {},
                      ),
                      const SizedBox(width: 30),
                      DefaultIconButton(
                        image: "assets/images/facebook.png",
                        onPressed: () {},
                      ),
                      const SizedBox(width: 30),
                      DefaultIconButton(
                        image: "assets/images/linkedin.png",
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Align(
                    child: InkWell(
                      onTap: () {
                        if (Navigator.canPop(context)) {
                          Navigator.pop(context);
                        } else {
                          Navigator.push(context, LoginPage.route());
                        }
                      },
                      child: RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(letterSpacing: 0),
                          children: [
                            TextSpan(
                              text: "Sign In",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
