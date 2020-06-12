import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Text(
            'Some Brand',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          FlutterLogo(
            size: 30,
            colors: Colors.yellow,
          ),
        ],
      );
}
