import 'package:flutter/material.dart';
import 'reset_password.dart';
import 'signup.dart';
import '../theme.dart';
import '../widgets/login_form.dart';
import '../widgets/primary_button.dart';

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Eurus Exchange'
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
                height: 80,
              ),
              Text(
                'Welcome!',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign Up',
                      style: textButton.copyWith(
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LogInForm(),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen()));
                },
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: kZambeziColor,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                    decorationThickness: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              PrimaryButton(
                buttonText: 'Log In',
              ),

              // GestureDetector(
              //   onTap: () {
              //     Navigator.push(context, 
              //     MaterialPageRoute(
              //       builder: (context) => HomeScreen()));
              //   },
              //   child: PrimaryButton(
              //     buttonText: 'Log In',
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
