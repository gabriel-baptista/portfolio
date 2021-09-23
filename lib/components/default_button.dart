import 'package:flutter/material.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.imageSrc,
    required this.text,
    this.press,
  }) : super(key: key);

  final String imageSrc, text;
  // ignore: prefer_typing_uninitialized_variables
  final press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
          // primary: Color(0xFFE8F0F9),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          )),
      onPressed: press,
      child: Row(
        children: [
          Image.asset(
            imageSrc,
            height: 40,
          ),
          const SizedBox(
            width: kDefaultPadding,
          ),
          Text(text),
        ],
      ),
    );
  }
}
