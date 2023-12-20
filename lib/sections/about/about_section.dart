import 'package:flutter/material.dart';
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
                      'Formado em Análise e Desenvolvimento de Sistemas pela faculdade FATEC Prof. Waldomiro May. Atualmente estou com foco em front-end para aplicações Web e aplicações híbridas com Flutter. Também gerencio ativamente 2 servidores próprios (WIndows e Linux) para colocar meus conhecimentos em prática.',
                ),
              ),
              ExperienceCard(
                numOfExp: '3',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      '2022 - IOCHPE-MAXION\nAnalista JR Administrador de redes/servidores e suporte ao cliente.\n\n2022 - IOCHPE-MAXION\nEstágio de infraestruras de redes e suporte ao cliente.\n\n2021 - Instituto Nacional de Pesquisas Espaciais\nBolsa PIBITI para desenvolvimento de uma plataforma de WebMapping',
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
                imageSrc: 'assets/img/hand.png',
                text: 'E-mail',
                press: () => _launchLink('mailto:gabriel@gabrieloliveira.dev'),
              ),
              const SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              DefaultButton(
                imageSrc: 'assets/img/download.png',
                text: 'Cúrriculo Virtual',
                press: () => _launchLink(
                    'https://www.canva.com/design/DAFVY13e_Bc/mcFU4r0LB-tmcY36Nu6ymA/view?website#4'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
