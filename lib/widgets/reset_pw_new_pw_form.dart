import 'package:eurus_mobile/screens/reset_pw_success.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import '../theme.dart';

class ResetPwAddNewPw extends StatefulWidget {
  const ResetPwAddNewPw({Key key}) : super(key: key);

  @override
  _ResetPwAddNewPwState createState() => _ResetPwAddNewPwState();
}

class _ResetPwAddNewPwState extends State<ResetPwAddNewPw> {
  String _password;
  String _confirmPassword;

  bool _isObscure = true;

  final GlobalKey<FormState> _resetPwAddNewPwKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _resetPwAddNewPwKey,
      child: Column(
        children: [
          buildInputPassword('New Password', true),
          buildInputConfirmPassword('New Password Confirmation', true),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: const Text(
              'Reset Password',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: appPrimaryButton,
            onPressed: () => {
              if (!_resetPwAddNewPwKey.currentState.validate())
                {}
              else
                {
                  _resetPwAddNewPwKey.currentState.save(),
                  logInfo(_password),
                  logInfo(_confirmPassword),
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPwSuccessScreen())),
                },
            },
          ),
        ],
      ),
    );
  }

  Padding buildInputPassword(String label, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: kTextFieldColor,
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
            ),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? const Icon(
                            Icons.visibility_off,
                            color: kTextFieldColor,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ),
                  )
                : null),
        validator: (String value) {
          if (value == null || value.isEmpty) {
            return 'Password is Required';
          }

          if (!RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
              .hasMatch(value)) {
            return 'Enter valid password';
          }
          return null;
        },
        onSaved: (String value) {
          _password = value;
        },
      ),
    );
  }

  Padding buildInputConfirmPassword(String label, bool pass) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: pass ? _isObscure : false,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: kTextFieldColor,
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor),
            ),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? const Icon(
                            Icons.visibility_off,
                            color: kTextFieldColor,
                          )
                        : const Icon(
                            Icons.visibility,
                            color: kPrimaryColor,
                          ),
                  )
                : null),
        validator: (String value) {
          if (value == null || value.isEmpty) {
            return 'Password is Required';
          }

          if (!RegExp(
                  r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
              .hasMatch(value)) {
            return 'Enter valid password';
          }
          // TODO: Fix Password comparison
          // if(_password != value){
          //   return 'Password does not match';
          // }

          return null;
        },
        onSaved: (String value) {
          _confirmPassword = value;
        },
      ),
    );
  }
}
