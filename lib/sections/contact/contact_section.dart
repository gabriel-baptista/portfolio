import 'package:flutter/material.dart';
import '../../components/section_title.dart';
import '../../constants.dart';
import 'components/contact_box.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('../assets/img/bg_img_2.png'),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          SectionTitle(
            title: 'Contate-me',
            subtitle: 'Para peguntas de projetos ou qualquer outra coisa',
            color: Color(0xFF07E24A),
          ),
          ContactBox(),
        ],
      ),
    );
  }
}
