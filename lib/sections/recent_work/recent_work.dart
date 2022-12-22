import 'package:flutter/material.dart';
import 'package:portfolio/components/hireme_card.dart';
import 'package:portfolio/components/section_title.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recent_work_section.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
        color: const Color(0xFFF7E8FF).withOpacity(0.3),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img/recent_work_bg.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          const SectionTitle(
            title: 'Trabalhos Recentes',
            subtitle: '',
            color: Color(0xFFFFB100),
          ),
          const SizedBox(
            height: kDefaultPadding * 2,
          ),
          SizedBox(
            width: 1100,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                  recentWorks.length, (index) => RecentWorkCard(index: index)),
            ),
          ),
          const SizedBox(
            height: kDefaultPadding * 5,
          ),
        ],
      ),
    );
  }
}
