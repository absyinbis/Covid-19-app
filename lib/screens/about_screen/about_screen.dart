
import 'package:flutter/material.dart';



class About extends StatelessWidget {
  const About();

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text("About"),
    ),
    body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 50),
          Text("Covid - 19 Cases App",
            style : TextStyle(
                fontSize: 30
            ),
          ),
          Divider(
            color: Colors.blueAccent,
            thickness: 5,
            endIndent: 100,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AboutText("Version","0.0.1"),
                AboutText("Last Update","12 Feb 2020"),
                AboutText("App","is a program that offers the corona cases in detail of mortality and cases of ties and links that explain the protection method of this virus"),
                Text("Term of Services"),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}


class AboutText extends StatelessWidget {
  const AboutText(this.title,this.text);
  final String title,text;
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title,
        style: TextStyle(fontSize: 13, color: Colors.blueGrey),
      ),
      Text(text,
        style: TextStyle(fontSize: 20, color: Colors.black),
      ),
    ],
  );
}
