import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:portfolio/components/default_button.dart';
import 'package:portfolio/components/my_outline_button.dart';
import 'package:portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  Future<void> _launchLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceWebView: false, forceSafariVC: false);
    } else {
      // ignore: avoid_print
      print('Não pode executar o link $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      constraints: const BoxConstraints(maxWidth: 1100),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Estudante de Análise e Desenvolvimento de Sistemas pela faculdade Prof. Waldomiro May. Iniciei no mundo em 2018 através de um curso técnico de Desenvolvimento de Sistemas.',
                ),
              ),
              ExperienceCard(
                numOfExp: '3',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Atualmente estou com foco em front-end para aplicações Web e aplicações híbridas com Dart e Flutter. Também amo trabalhar com criação e gerenciamento de Banco de Dados.\nEstou estagiando no INPE no desenvolvimento de uma plataforma de WebMapping',
                ),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: '../assets/img/hand.png',
                text: 'Contrate-me',
                press: () {},
              ),
              const SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              DefaultButton(
                imageSrc: '../assets/img/download.png',
                text: 'Cúrriculo Virtual',
                press: () =>
                    _launchLink('http://lattes.cnpq.br/8245071391810414'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
