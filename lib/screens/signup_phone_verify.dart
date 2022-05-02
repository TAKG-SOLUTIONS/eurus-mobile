import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/phone_no_verify_form.dart';
import '../constants.dart' as constants;

class SignUpPhoneVerifyScreen extends StatelessWidget {
  const SignUpPhoneVerifyScreen({Key key}) : super(key: key);

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
                  'Phone Number',
                  style: titleText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              
              Padding(
                padding: kDefaultPadding,
                child: Text(
                  'Add your phone number. We\'ll send you a varificaton code.',
                  style: subTitle,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: kDefaultPadding,
                child: SignUpPhoneNoVerify(),
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
