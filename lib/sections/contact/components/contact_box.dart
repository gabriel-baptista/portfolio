import 'package:flutter/material.dart';
import '../../contact/components/social_card.dart';
import '../../../constants.dart';
import 'contact_form.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

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
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.only(top: kDefaultPadding * 2),
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialCard(
                color: const Color.fromRGBO(245, 245, 245, 1),
                iconSrc: '../assets/img/GitHub-Mark-32px.png',
                name: 'GitHub',
                press: () => _launchLink('https://github.com/gabriel-baptista'),
              ),
              SocialCard(
                color: const Color(0xFFE4FFC7),
                iconSrc: '../assets/img/whatsapp.png',
                name: 'WhatsApp',
                press: () => _launchLink(
                    'https://api.whatsapp.com/send?phone=5512982256685'),
              ),
              SocialCard(
                color: const Color(0xFFFFE0E0),
                iconSrc: '../assets/img/instagram-logo.png',
                name: 'Instagram',
                press: () =>
                    _launchLink('https://www.instagram.com/gabriel.baptista_/'),
              ),
            ],
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          const ContactForm(),
        ],
      ),
    );
  }
}
