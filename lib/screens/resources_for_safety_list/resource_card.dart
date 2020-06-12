import 'package:covid19cases/model/resources_safety.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class ResourceCard extends StatelessWidget {
  const ResourceCard(this.resource);

  final ResourcesSafety resource;

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () async {
      if (await canLaunch(resource.link)) {
        await launch(resource.link);
      } else {
        throw 'Could not launch ${resource.link}';
      }
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * .15,
        decoration: BoxDecoration(
          color: Colors.white60,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/${resource.img}',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(child: Text(resource.text, textAlign: TextAlign.center)),
          ],
        ),
      ),
    ),
  );
}
