import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final String title;

  const CustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.title,
  }) : super(key: key);

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged(!widget.value);
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.0,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(4),
              // color: widget.value ? Colors.blue : Colors.white,
            ),
            child: widget.value
                ? const Icon(Icons.check, size: 16, color: Colors.black)
                : null,
          ),
          const SizedBox(width: 8), // Adjust the space here
          Text(
            widget.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
