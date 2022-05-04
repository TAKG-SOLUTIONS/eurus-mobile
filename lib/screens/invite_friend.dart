import 'package:eurus_mobile/theme.dart';
import 'package:eurus_mobile/widgets/invite_friend_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InviteFriendScreen extends StatelessWidget {
  const InviteFriendScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Padding(
          padding: EdgeInsets.all(64.0),
          child: Text(
            'Invite a Friend'
          ),
        ),
        backgroundColor: kAppBarColor,
      ),

      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),

              SizedBox(height: kSpacingUnit.w * 3),
                
              const InviteFriendView(),  
              
                ],
              ),
          ),
        ),
      );
  }
}
