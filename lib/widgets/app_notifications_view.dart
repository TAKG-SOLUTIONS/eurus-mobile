import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

class AppNotificationsView extends StatefulWidget {
  const AppNotificationsView({Key key}) : super(key: key);

  @override
  _AppNotificationsView createState() => _AppNotificationsView();
}

class _AppNotificationsView extends State<AppNotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'All Notifications',
          style: titleText,
        )
      ],
    );
  }
}
