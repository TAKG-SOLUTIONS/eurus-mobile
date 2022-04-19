import 'package:eurus_mobile/widgets/reset_form.dart';
import 'package:flutter/material.dart';
import '../theme.dart';
// import '../widgets/primary_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(50.0),
          child: (
            Text(
              'Eurus Exchange'
            )
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
                'Reset Passowrd',
                style: titleText,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Please enter your email address',
                style: subTitle,
              ),
              
              const SizedBox(
                height: 5,
              ),
              
              const ResetForm(),

            ],
          ),
        ),
      ),
    );
  }
}
