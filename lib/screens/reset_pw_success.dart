import 'package:eurus_mobile/screens/login.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
import '../constants.dart' as constants;

class ResetPwSuccessScreen extends StatelessWidget {
  const ResetPwSuccessScreen({Key key}) : super(key: key);

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
                  'Password Changed!',
                  style: secondTitleText,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                  padding: kDefaultPadding,
                  child: Text(
                    'Your password has been changed successfully.',
                    style: subLineText,
                  )),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: const Text(
                      'Back to Login',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    style: appPrimaryButton,
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LogInScreen()))
                    },
                  ),
                ),
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
