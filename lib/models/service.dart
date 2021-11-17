// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

// lista de serviço dummy
List<Service> services = [
  Service(
    id: 1,
    title: "Desenvolvimento \nWeb",
    image: "assets/img/desktop.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Desenvolvimento \nHíbrido",
    image: "assets/img/mobileDesktop.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "UI Design",
    image: "assets/img/ui.png",
    color: Color(0xFFFFE0E0),
  ),
];
