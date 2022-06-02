import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

class InviteFriendView extends StatefulWidget {
  const InviteFriendView({Key key}) : super(key: key);

  @override
  _InviteFriendView createState() => _InviteFriendView();
}

class _InviteFriendView extends State<InviteFriendView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Invite a Friend',
          style: titleText,
        )
      ],
    );
  }
}
