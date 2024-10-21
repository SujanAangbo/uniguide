import 'package:flutter/material.dart';

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
