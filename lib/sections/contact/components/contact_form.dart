import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
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
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Nome',
                hintText: 'Insira o seu nome',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Insira o seu Email',
              ),
            ),
          ),
          SizedBox(
            child: ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: 200,
              ),
              child: TextFormField(
                onChanged: (value) {},
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Comentário',
                  hintText: 'Insira um comentário',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: '../assets/img/contact_icon.png',
                text: 'Contate-me',
                press: () => _launchLink('mailto:gbdso16@gmail.com'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
