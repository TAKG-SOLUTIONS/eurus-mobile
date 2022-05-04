import 'package:eurus_mobile/screens/help_support.dart';
import 'package:eurus_mobile/screens/invite_friend.dart';
import 'package:eurus_mobile/screens/login.dart';
import 'package:eurus_mobile/screens/security.dart';
import 'package:eurus_mobile/screens/settings.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import 'account_info.dart';

class ProfileScreen extends StatefulWidget {
        const ProfileScreen({ Key key }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int userIdValue = 3576;

  String verified = 'verified';

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, height: 800, width: 420, allowFontScaling: true);
    
    var profileInfo = Expanded(
                child: Column(
                  children: [
                    Container(
                    height: kSpacingUnit.w * 8,
                    width: kSpacingUnit.w * 8,
                    margin: EdgeInsets.only(top: kSpacingUnit.w * 1),

                    child: Stack(
                        children: [
                            CircleAvatar(
                            radius: kSpacingUnit.w * 4,
                            backgroundImage: const AssetImage('images/avatar.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: kSpacingUnit.w * 0.5),
                    Text('ID: $userIdValue', style: kTitleTextStyle),
                    SizedBox(height: kSpacingUnit.w * 3),
                  ],
                ),
              );

    var header = Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              SizedBox(height: kSpacingUnit.w * 3),
              profileInfo,

              SizedBox(height: kSpacingUnit.w * 3),
            ],

          );

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: kSpacingUnit.w * 0.5),
          header,

          Expanded(
            child: ListView(
              children: <Widget>[
                
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogInScreen()));
                  },
                  child: const ProfileListItem(
                    icon: Icons.login_outlined,
                    text: 'Account Log In or Sign Up',
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AccountInfoScreen()));
                  },
                  child: const ProfileListItem(
                    icon: LineAwesomeIcons.user_circle,
                    text: 'Account Info',
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsScreen()));
                  },
                  child: const ProfileListItem(
                    icon: LineAwesomeIcons.cog,
                    text: 'Settings',
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecurityScreen()));
                  },
                  child: const ProfileListItem(
                    icon: LineAwesomeIcons.alternate_shield,
                    text: 'Security',
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const InviteFriendScreen()));
                  },
                  child: const ProfileListItem(
                    icon: Icons.notifications_outlined,
                    text: 'Notifications',
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HelpSupportScreen()));
                  },
                  child: const ProfileListItem(
                    icon: LineAwesomeIcons.question_circle,
                    text: 'Help & Support',
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const InviteFriendScreen()));
                  },
                  child: const ProfileListItem(
                    icon: Icons.share_outlined,
                    text: 'Invite a Friend',
                  ),
                ),
                
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LogInScreen()));
                  },
                  child: const ProfileListItem(
                    icon: Icons.logout_outlined,
                    text: 'Logout',
                    hasNavigation: false,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}

class ProfileListItem extends StatelessWidget {
  final IconData icon;
  // ignore: prefer_typing_uninitialized_variables
  final text;
  final bool hasNavigation;
  
  const ProfileListItem({
    Key key, 
    this.icon, 
    this.text, 
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit.w * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 4,
      ).copyWith(
        bottom: kSpacingUnit.w * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: kSpacingUnit.w * 2.5,
            ),
            SizedBox(width: kSpacingUnit.w * 2.5),
            Text(
              text,
              style: kTitleTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            if(hasNavigation)
            Icon(
              LineAwesomeIcons.angle_right,
              size: kSpacingUnit.w * 2.5,
            )
          ]
        ),
    );
  }
}
