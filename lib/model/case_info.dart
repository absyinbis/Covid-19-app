import 'package:flutter/material.dart';

class CasesInfo{

  const CasesInfo({
    @required this.city,
    @required this.confirmed,
    @required this.deaths,
    @required this.recovered,

  });
  final String city;
  final int confirmed, deaths, recovered;
  int get active=>confirmed- (deaths+recovered);

}