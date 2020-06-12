import 'package:covid19cases/model/case_info.dart';
import 'package:covid19cases/model/resources_safety.dart';
import 'package:covid19cases/screens/about_screen/about_screen.dart';
import 'package:covid19cases/screens/cases_screen/total_cases.dart';
import 'package:covid19cases/screens/resources_for_safety_list/resources_safety_list.dart';
import 'package:flutter/material.dart';

import '../logo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen();

  final cases = [
    CasesInfo(
     city: 'Tripoli', confirmed: 15, deaths: 1, recovered: 5,
    ),
    CasesInfo(
      city: 'Benghazi', confirmed: 19, deaths: 3, recovered: 0,
    ),
    CasesInfo(
      city: 'Misrata', confirmed: 36, deaths: 8, recovered: 0,
    ),
    CasesInfo(
      city: 'Sabha', confirmed: 22, deaths: 6, recovered: 10,
    ),
    CasesInfo(
      city: 'Zliten', confirmed: 4, deaths: 1, recovered: 1,
    ),
    CasesInfo(
      city: 'Tarhuna', confirmed: 12, deaths: 5, recovered: 5,
    ),
    CasesInfo(
      city: 'Zawiya', confirmed: 30, deaths: 20, recovered: 7,
    ),
    CasesInfo(
      city: 'Sirte', confirmed: 1, deaths: 0, recovered: 0,
    ),
  ];

  final resources = [
    ResourcesSafety(
      text: 'waer the mask', img: 'mask.png', link: 'https://www.google.com/'
    ),
    ResourcesSafety(
        text: 'stay at home', img: 'stay-at-home.png', link: 'https://www.facebok.com/'
    ),
    ResourcesSafety(
        text: 'wash your hands', img: 'wash-your-hands.png', link: 'https://www.youtube.com/'
    ),
    ResourcesSafety(
        text: 'safety distance', img: 'social.png', link: 'https://www.vk.com/'
    ),
  ];

  @override
  Widget build(BuildContext context) =>Scaffold(
    body: Stack(
      children: [
        Image.asset(
          'assets/covid-19.jpg',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.blue.withOpacity(.3),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row( //The changes startes from this line to ->
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Logo(),
                    IconButton(
                      icon: Icon(Icons.question_answer),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => About(), // Here should be the ABOUT page call
                          )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ResourcesSafetyList(resources),
                Expanded(child: TotalCases(cases)),
              ],
            ),
          ),
        ),
      ]
    ),
  );

}
