import 'package:covid19cases/model/resources_safety.dart';
import 'package:covid19cases/screens/resources_for_safety_list/resource_card.dart';
import 'package:flutter/material.dart';

class ResourcesSafetyList extends StatelessWidget {
  const ResourcesSafetyList(this.resources);

  final List<ResourcesSafety> resources;

  @override
  Widget build(BuildContext context) =>Row(
    children: [
      ...resources.map((resource) => Expanded(child: ResourceCard(resource)))
    ],
  );
}
