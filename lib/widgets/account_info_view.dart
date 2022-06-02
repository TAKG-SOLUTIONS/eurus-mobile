import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import '../constants.dart' as constants;
import '../theme.dart';

class AccountInfoView extends StatefulWidget {
  const AccountInfoView({Key key}) : super(key: key);


  
  @override
  _AccountInfoView createState() => _AccountInfoView();
}

class _AccountInfoView extends State<AccountInfoView> {

    String userIdValue = '2002021';
    String userEmail = 'nimna@gmail.com';
    String userPhNo = '0712181567';

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          ProfileListItem(
            icon: LineAwesomeIcons.user_1,
            text: constants.USER_ID,
            textValue: userIdValue,
            hasNavigation: false,
          ),

         ProfileListItem(
            icon: Icons.mail_outline_rounded,
            text: constants.EMAIL_INFO,
            textValue: userEmail,
            hasNavigation: false,
          ),

          ProfileListItem(
            icon: Icons.phone_android_outlined,
            text: constants.PHONE_NO_INFO,
            textValue: userPhNo,
            hasNavigation: false,
          ), 

        ],
      );
  }

}


class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String textValue;
  final bool hasNavigation;
  
  const ProfileListItem({
    Key key, 
    this.icon, 
    this.text,
    this.textValue, 
    this.hasNavigation = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit.w * 6,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 0,
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
            SizedBox(width: kSpacingUnit.w * 1),
            Text(
              text,
              style: kTitleTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: kSpacingUnit.w * 1),
            Text(
              textValue,
              style: kCaptionTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ]
        ),
    );
  }
}
