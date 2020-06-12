import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class CasesCard extends StatelessWidget {
  const CasesCard({
    @required this.city,
    @required this.confirmed,
    @required this.active,
    @required this.deaths,
    @required this.recovered,
  });

  final String city;
  final int confirmed, deaths, recovered, active;

  @override
  Widget build(BuildContext context) => Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.account_balance),
                  Text(
                    city,
                    style: TextStyle(fontSize: 23),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NumberStats('Deaths', 22),
                  NumberStats('Active', 32),
                ],
              )
            ],
          ),
        ),
      );
}

class NumberStats extends StatelessWidget {
  const NumberStats(this.name, this.number);

  final int number;
  final String name;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Text('$number'),
          Text(name),
        ],
      );
}
