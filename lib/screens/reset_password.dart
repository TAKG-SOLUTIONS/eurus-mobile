import 'package:flutter/material.dart';
import 'login.dart';
import '../theme.dart';
import '../widgets/primary_button.dart';
import '../widgets/reset_form.dart';

class ResetPasswordScreen extends StatelessWidget {
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
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 160,
              ),
              Text(
                'Reset Password',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Please enter your email address',
                style: subTitle.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ResetForm(),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(),
                        ));
                  },
                  child: PrimaryButton(buttonText: 'Reset Password')),
            ],
          ),
        ),
      ),
    );
  }
}
