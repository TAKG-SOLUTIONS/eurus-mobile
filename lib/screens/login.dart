import 'reset_pw_email_enter.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import '../theme.dart';
import '../widgets/login_form.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
// import '../widgets/primary_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Eurus Exchange'
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
                'Welcome!',
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Let\'s get started',
                style: subTitle,
              ),
              
              const SizedBox(
                height: 5,
              ),
              
              const LogInForm(),

              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPasswordEmailScreen()));
                },

                child: const Center(
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: kZambeziColor,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1.5,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(
                height: 40,
              ),

              Center(
                child: Column(
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: subTitle,
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Center(
                child: ElevatedButton(
                child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white, fontSize: 16
                      ),
                ),
                
                style: appPrimaryButton,

                onPressed: () => { 
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUpScreen()))               
                },
               ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
