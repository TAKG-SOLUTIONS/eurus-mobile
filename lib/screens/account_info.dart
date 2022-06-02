import 'package:eurus_mobile/theme.dart';
import 'package:eurus_mobile/widgets/account_info_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountInfoScreen extends StatelessWidget {
  const AccountInfoScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    String userEmail = 'nimna@gmail.com';

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Padding(
          padding: EdgeInsets.all(74.0),
          child: Text(
            'Account Info'
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

              Center(
                child: Container(
                height: kSpacingUnit.w * 8,
                width: kSpacingUnit.w * 8,
                margin: EdgeInsets.only(top: kSpacingUnit.w * 0.5),

                child: Stack(
                    children: [
                        CircleAvatar(
                        radius: kSpacingUnit.w * 4,
                        backgroundImage: const AssetImage('images/avatar.png'),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: kSpacingUnit.w * 0.5),

              Center(
                child: Text(
                  userEmail, 
                  style: kTitleTextStyle
                  )
                ),

              SizedBox(height: kSpacingUnit.w * 3),
                
              const AccountInfoView(),  
              
                ],
              ),
          ),
        ),
      );
  }
}
