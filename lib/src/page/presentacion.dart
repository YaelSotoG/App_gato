import 'package:flutter/material.dart';

class Presentacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 200.0,
          ),
          FlutterLogo(
            size: 200,
          ),
          Text('Yarock', style: Theme.of(context).textTheme.bodyText2),
        ],
      ),
    );
  }
}
