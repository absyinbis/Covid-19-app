import 'package:covid19cases/model/case_info.dart';
import 'package:flutter/material.dart';

class CaseCard extends StatelessWidget {
  const CaseCard(this.info);

  final CasesInfo info;

  @override
  Widget build(BuildContext context) => Card(

    color: Color.fromRGBO(223, 223, 223, 1),
    shape: RoundedRectangleBorder(

      borderRadius: BorderRadius.all(
        Radius.circular(15),

      ),

    ),

    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Text(
                info.city,
                style: TextStyle(fontSize: 23),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,

            children: [
              NumberStats('Confirmed',info.confirmed),
              NumberStats('Active',info.active),
              NumberStats('Recovered',info.recovered),
              NumberStats('Deaths',info.deaths),
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
      Text('$number'
        ,style: TextStyle(fontSize: 20),),

      tet(name),
    ],
  );
}

//coloring
tet(name){
  return name=='Confirmed'? Text(name,style: TextStyle(fontSize: 15,color: Colors.red.shade800)):
  name=='Active'? Text(name,style: TextStyle(fontSize: 15,color: Colors.yellow.shade800)):
  name=='Recovered'? Text(name,style: TextStyle(fontSize: 15,color: Colors.green.shade800)):
  Text(name,style: TextStyle(fontSize: 15,color: Colors.black));
}