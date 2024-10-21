import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uniguide/core/app_colors.dart';
import 'package:uniguide/core/widgets/custom_checkbox.dart';
import 'package:uniguide/core/widgets/primary_button.dart';
import 'package:uniguide/presentation/auth/signup/signup_page.dart';

class LoginPage extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
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
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  "Sign In",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  "Please sign in to access your account",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 36),
                TextFormField(
                  style: Theme.of(context).textTheme.titleSmall,
                  decoration: const InputDecoration(
                    hintText: "Phone / Email",
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
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCheckbox(
                      value: true,
                      onChanged: (value) {},
                      title: "Remember me",
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot Password?",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                PrimaryButton(
                  text: "Sign In",
                  onPressed: () {},
                ),
                const SizedBox(height: 40),
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
                const SizedBox(height: 40),
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
                const SizedBox(height: 40),
                Align(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, SignupPage.route());
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
                            text: "Sign Up",
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
    );
  }
}

class DefaultIconButton extends StatelessWidget {
  final String image;
  final VoidCallback onPressed;

  const DefaultIconButton({
    super.key,
    required this.image,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Image.asset(image),
      ),
    );
  }
}
