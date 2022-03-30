import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/checkbox.dart';
import '../widgets/phone_no_verify.dart';
import '../widgets/primary_button.dart';
import '../widgets/signup_form.dart';

class SignUpPhoneVerifyScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(50.0),
          child: (
            Text(
              'Eurus Exchange'
            )
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Form(
        // key: formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Text(
                  'Enter Your Phone Number',
                  style: titleText,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              
              SizedBox(
                height: 10,
              ),
              Padding(
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
              
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
