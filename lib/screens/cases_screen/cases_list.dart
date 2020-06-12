import 'package:covid19cases/model/case_info.dart';
import 'package:covid19cases/screens/about_screen/about_screen.dart';
import 'package:flutter/material.dart';

import '../logo.dart';
import 'case_card.dart';

class CasesList extends StatelessWidget {
  const CasesList(this.cases);

  final List<CasesInfo> cases;

  @override
  Widget build(BuildContext context) => Scaffold(
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
                  SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: [
                        ...cases.map((c) => CaseCard(c)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]
    ),
  );
}
