import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../../core/app_colors.dart';
import '../../../core/widgets/primary_button.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  void initState() {
    super.initState();
    listenOtp();
  }

  void listenOtp() async {
    await SmsAutoFill().listenForCode();
    SmsAutoFill().code.listen((event) {
      print('event: $event');
    }, onError: (obj, objstack) {
      print('error');
    }, onDone: () {
      print('done');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Text(
                    "Verify your number",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "A code is sent to your phone number. Please check message and enter the code here.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  const SizedBox(height: 32),

                  // otp fields
                  PinFieldAutoFill(
                    keyboardType: TextInputType.number,
                    decoration: BoxLooseDecoration(
                      strokeColorBuilder: const FixedColorBuilder(Colors.grey),
                      bgColorBuilder:
                          const FixedColorBuilder(Colors.transparent),
                      textStyle: Theme.of(context).textTheme.titleSmall,
                    ),
                    // autoFocus: true,
                  ),

                  const SizedBox(height: 32),

                  Text(
                    "An OTP has been sent to your number.",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Didn't receive the code? ",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Resend",
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.primaryColor,
                                  ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 48),
                  PrimaryButton(
                    text: "Verify",
                    onPressed: () {},
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
