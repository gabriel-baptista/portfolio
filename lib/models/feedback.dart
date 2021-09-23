// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// lista de feedbacks dummy
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Gabriel Oliveira",
    review: review,
    userPic: "assets/img/people.png",
    color: Color.fromRGBO(255, 243, 221, 255),
  ),
  Feedback(
    id: 2,
    name: "João Pedro",
    review: review,
    userPic: "assets/img/people.png",
    color: Color.fromRGBO(217, 255, 252, 255),
  ),
  Feedback(
    id: 3,
    name: "Rodrigo Augusto",
    review: review,
    userPic: "assets/images/people.png",
    color: Color.fromRGBO(255, 224, 224, 255),
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
