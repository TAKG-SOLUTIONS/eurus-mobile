import 'package:eurus_mobile/widgets/reset_pw_new_pw_form.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

// import '../widgets/primary_button.dart';

class ResetPwAddNewPwScreen extends StatelessWidget {
  const ResetPwAddNewPwScreen({Key key}) : super(key: key);

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
                'Reset Password',
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Enter your new password.',
                style: subTitle,
              ),
              
              const SizedBox(
                height: 10,
              ),
              
              const ResetPwAddNewPw(),

              const SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
