import 'package:flutter/material.dart';

import 'glass_content.dart';

class BlurBox extends StatelessWidget {
  const BlurBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Spacer(),
        GlassContent(size: size),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
