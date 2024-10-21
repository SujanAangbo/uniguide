import 'package:flutter/cupertino.dart';
import '../app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isOpposite;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isOpposite = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.primaryColor,
        ),
      ),
      child: CupertinoButton(
        color: isOpposite ? CupertinoColors.white : AppColors.primaryColor,
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        child: Text(
          text,
          style: TextStyle(
            letterSpacing: 0.8,
            fontSize: 16,
            color: isOpposite ? AppColors.primaryColor : CupertinoColors.white,
            fontWeight: FontWeight.w700,
            fontFamily: "Proxima Nova",
          ),
        ),
      ),
    );
  }
}
