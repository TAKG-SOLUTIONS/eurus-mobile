import 'package:eurus_mobile/screens/phone_otp_verify.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:loggy/loggy.dart';

import '../theme.dart';

// import 'checkbox.dart';

class SignUpPhoneNoVerify extends StatefulWidget {
  const SignUpPhoneNoVerify({Key key}) : super(key: key);

  @override
  _SignUpPhoneNoVerifyState createState() => _SignUpPhoneNoVerifyState();
}

// final _signUpFormKey = GlobalKey<FormState>();

class _SignUpPhoneNoVerifyState extends State<SignUpPhoneNoVerify> {
  String _phoneNumber;

  // bool _isObscure = true;

  final GlobalKey<FormState> _signFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signFormKey,
      child: Column(
        children: [
          buildInputPhoneNumber('Phone Number'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Request OTP',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: appPrimaryButton,
            onPressed: () => {
              if (!_signFormKey.currentState.validate())
                {}
              else
                {
                  _signFormKey.currentState.save(),
                  logInfo(_phoneNumber),
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SignUpPhoneOtpVerifyScreen()))
                }
            },
          ),
        ],
      ),
    );
  }

  Padding buildInputPhoneNumber(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black45),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
        keyboardType: TextInputType.phone,
        initialCountryCode: 'LK',
        countries: const ['LK'],
        showDropdownIcon: false,
        showCountryFlag: false,
        onSaved: (value) {
          _phoneNumber = value.number;
        },
      ),
    );
  }
}
