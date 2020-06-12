import 'package:covid19cases/model/case_info.dart';
import 'package:flutter/material.dart';

import 'cases_list.dart';

int total(List<CasesInfo> caseinfo)
{
  int sum = 0;
  caseinfo.forEach((element) { sum+=element.confirmed; });
  return sum;
}

int death(List<CasesInfo> caseinfo)
{
  int sum = 0;
  caseinfo.forEach((element) { sum+=element.deaths; });
  return sum;
}

int recovered(List<CasesInfo> caseinfo)
{
  int sum = 0;
  caseinfo.forEach((element) { sum+=element.recovered; });
  return sum;
}

int active(List<CasesInfo> caseinfo)
{
  int sum = 0;
  caseinfo.forEach((element) { sum+=element.active; });
  return sum;
}

class TotalCases extends StatelessWidget {
  TotalCases(this.cases);

  final List<CasesInfo> cases;


  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_)=>CasesList(cases))
          );
        },
        child: Card(
            color: Colors.white60,
            shape: RoundedRectangleBorder(

              borderRadius: BorderRadius.all(
                Radius.circular(55),

              ),

            ),

            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Total Cases',
                    style: TextStyle(fontSize: 23),
                  ),
                  Text(
                  total(cases).toString(),
                    style: TextStyle(fontSize: 23,color: Colors.red),
                  ),
                  Expanded(
                    child: Image.asset(
                      'assets/map.png',
                      height: 230,
                      width: 330,
                      fit: BoxFit.fill,
                    ),
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(height: 10),


                      Column(
                        children: <Widget>[
                          Text(
                            'Active',
                            style: TextStyle(fontSize: 20,color: Colors.red ),
                          ),
                          Text(
                            active(cases).toString(),
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),

                      Column(
                        children: <Widget>[
                          Text(
                            'Deaths',
                            style: TextStyle(fontSize: 20,color: Colors.black ),
                          ),
                          Text(
                            death(cases).toString(),
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),



                      Column(
                        children: <Widget>[
                          Text(
                            'Recovered',
                            style: TextStyle(fontSize: 20,color: Colors.green.shade500),
                          ),
                          Text(
                            recovered(cases).toString(),
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),



                    ],
                  )
                ],

              ),
            )
        ),
      );
}