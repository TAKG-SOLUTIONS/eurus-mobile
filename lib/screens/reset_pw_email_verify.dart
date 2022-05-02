import 'package:eurus_mobile/widgets/reset_pw_email_verify_form.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import '../constants.dart' as constants;

class ResetPwEmailVerifyScreen extends StatelessWidget {
  const ResetPwEmailVerifyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(50.0),
          child: (Text(constants.APPLICATION_NAME)),
        ),
        backgroundColor: kAppBarColor,
      ),
      body: Form(
        // key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Text(
                  'Reset Password',
                  style: titleText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                  padding: kDefaultPadding,
                  child: Text(
                    'Please check your email and enter the verification code here.',
                    style: subTitle,
                  )),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: kDefaultPadding,
                child: ResetPwEmailVerify(),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
