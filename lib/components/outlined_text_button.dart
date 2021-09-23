import 'package:flutter/material.dart';

import '../constants.dart';

class MyOutlinedTextButton extends StatelessWidget {
  const MyOutlinedTextButton({
    Key? key,
    required this.press,
    required this.text,
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(
            vertical: kDefaultPadding,
            horizontal: kDefaultPadding * 2.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(
            color: Color(0xFFEDEDED),
          ),
        ),
        onPressed: press,
        // onPressed: () {},
        child: Row(
          children: [Text(text)],
        ),
      ),
    );
  }
}
