import 'package:flutter/material.dart';

class ButtonUI extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const ButtonUI({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // 背景：黒
        foregroundColor: textColor, // 文字色：白
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // 角を少し丸く
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 50),
      ),
      child: Text(text),
    );
  }
}
