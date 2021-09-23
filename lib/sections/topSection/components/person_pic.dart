import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {
  const PersonPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 369,
        maxHeight: 860,
      ),
      child: Image.asset('../assets/img/bonecoGabriel.png'),
      // child: Image.asset('../assets/img/GadoDemais.png'),
      // child: Image.asset('../assets/img/gabriel.png'),
    );
  }
}
