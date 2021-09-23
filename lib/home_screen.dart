import 'package:flutter/material.dart';
import 'constants.dart';
import 'sections/about/about_section.dart';
import 'sections/contact/contact_section.dart';
import 'sections/recent_work/recent_work.dart';
import 'sections/service/service_section.dart';
import 'sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            SizedBox(
              height: kDefaultPadding,
            ),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
