import 'package:eurus_mobile/widgets/reset_pw_email_form.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
// import '../widgets/primary_button.dart';

class ResetPasswordEmailScreen extends StatelessWidget {
  const ResetPasswordEmailScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(50.0),
          child: (
            Text(
              'Eurus Exchange'
            )
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
                height: 60,
              ),
              Text(
                'Reset Password',
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Please enter your email address',
                style: subTitle,
              ),
              
              const SizedBox(
                height: 5,
              ),
              
              const ResetPwEmailForm(),

            ],
          ),
        ),
      ),
    );
  }
}
