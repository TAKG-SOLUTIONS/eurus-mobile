import 'dart:ffi';
import 'package:eurus_mobile/screens/main_page.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';

// import 'checkbox.dart';

class SignUpPhoneOtpVerify extends StatefulWidget {
  const SignUpPhoneOtpVerify({Key key}) : super(key: key);

  @override
  _SignUpPhoneOtpVerifyState createState() => _SignUpPhoneOtpVerifyState();
}

// final _otpFormState = GlobalKey<FormState>();

class _SignUpPhoneOtpVerifyState extends State<SignUpPhoneOtpVerify> {
  String _valuesOTP;

  // bool _isObscure = true;

  final GlobalKey<FormState> _otpFormState = GlobalKey<FormState>();

  var otpArr = const Array(4);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _otpFormState,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildOTPCode(first: true, last: false),
              buildOTPCode(first: false, last: false),
              buildOTPCode(first: false, last: false),
              buildOTPCode(first: false, last: true),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Verify',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: appPrimaryButton,
            onPressed: () => {
              if(!_otpFormState.currentState.validate()){

              }
              else{
                _otpFormState.currentState.save(),
                print(_valuesOTP),

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()))

              }
            },
          ),
        ],
      ),
    );
  }

  Widget buildOTPCode({bool first, last}) {
    return SizedBox(
      height: 80,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 2, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
