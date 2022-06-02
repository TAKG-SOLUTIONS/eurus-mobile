import 'package:eurus_mobile/screens/main_page.dart';
import 'package:eurus_mobile/variables.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import '../theme.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({Key key}) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  String _email;
  String _password;

  bool _isObscure = true;

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _loginFormKey,
      child: Column(
        children: [
          buildInputEmail('Email'),
          buildInputPassword('Password', true),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            style: appPrimaryButton,
            onPressed: () => {
              if (!_loginFormKey.currentState.validate())
                {}
              else
                {
                  _loginFormKey.currentState.save(),
                  print(_email),
                  print(_password),
                  loginValue = true,
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MainScreen()))
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

  Padding buildInputEmail(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.black45),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kPrimaryColor),
          ),
        ),
        validator: (String value) {
          if (value == null || value.isEmpty) {
            return 'Email is Required';
          }

          if (!RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(value)) {
            return 'Please enter a valid email address';
          }
          return null;
        },
        onSaved: (String value) {
          _email = value;
        },
      ),
    );
  }
}
