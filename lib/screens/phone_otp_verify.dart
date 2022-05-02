import 'package:eurus_mobile/widgets/phone_otp_form.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import '../constants.dart' as constants;

class SignUpPhoneOtpVerifyScreen extends StatelessWidget {
  const SignUpPhoneOtpVerifyScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(50.0),
          child: (
            Text(
              constants.APPLICATION_NAME
            )
          ),
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
                  'OTP Verification',
                  style: titleText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),

              Padding(
                padding: kDefaultPadding,
                child: Text(
                'Enter your OTP code number',
                style: subTitle,
                )
              ),

              
              const SizedBox(
                height: 20,
              ),
              
              const Padding(
                padding: kDefaultPadding,
                child: SignUpPhoneOtpVerify(),
              ),

              // SizedBox(
              //   height: 20,
              // ),
              // Padding(
              //   padding: kDefaultPadding,
              //   child: PrimaryButton(buttonText: 'Sign Up'),
              // ),


              
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
