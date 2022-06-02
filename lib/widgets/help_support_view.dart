import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

class HelpSupportView extends StatefulWidget {
  const HelpSupportView({Key key}) : super(key: key);


  
  @override
  _HelpSupportView createState() => _HelpSupportView();
}

class _HelpSupportView extends State<HelpSupportView> {


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[ 
          Text(
            'Add Help & Support',
            style: titleText,
          )
        ],
      );
  }
}

