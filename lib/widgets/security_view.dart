import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

class SecurityView extends StatefulWidget {
  const SecurityView({Key key}) : super(key: key);


  
  @override
  _SecurityView createState() => _SecurityView();
}

class _SecurityView extends State<SecurityView> {


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ 
          Text(
            'Add Security',
            style: titleText,
          )
        ],
      );
  }
}

