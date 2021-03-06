import 'dart:ffi';

import 'package:eurus_mobile/screens/reset_pw_set_new_pw.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

// import 'checkbox.dart';

class ResetPwEmailVerify extends StatefulWidget {
  const ResetPwEmailVerify({Key key}) : super(key: key);

  @override
  _ResetPwEmailVerifyState createState() => _ResetPwEmailVerifyState();
}

// final _otpFormState = GlobalKey<FormState>();

class _ResetPwEmailVerifyState extends State<ResetPwEmailVerify> {
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
              if (!_otpFormState.currentState.validate())
                {}
              else
                {
                  _otpFormState.currentState.save(),
                  logInfo(_valuesOTP),
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPwAddNewPwScreen()))
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
