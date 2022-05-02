import 'package:flutter/material.dart';
import 'login.dart';
import '../theme.dart';
// import '../widgets/checkbox.dart';
// import '../widgets/primary_button.dart';
import '../widgets/signup_form.dart';
import '../constants.dart' as constants;

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

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
                  'Create Account',
                  style: titleText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Row(
                  children: [
                    Text(
                      'Already a member?',
                      style: subTitle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInScreen()));
                      },
                      child: Text(
                        'Log In',
                        style: textButton.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 1,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: kDefaultPadding,
                child: SignUpForm(),
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
