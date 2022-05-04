import 'package:eurus_mobile/widgets/app_button_themes.dart';

import '../screens/signup_phone_verify.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

import 'checkbox.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

// final _signUpFormKey = GlobalKey<FormState>();

class _SignUpFormState extends State<SignUpForm> {
  String _email;
  String _password;
  // String _phoneNumber;

  bool _isObscure = true;
  bool _isChecked = false;

final GlobalKey<FormState> _signFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _signFormKey,
      child: Column(
        children: [
          buildInputEmail('Email'),
          buildInputPassword('Password', true),

            const SizedBox(
              height: 20,
            ),
            
            const CheckBox(
              'Agree to terms and conditions.'
              ),
            const SizedBox(
              height: 20,
            ),
            const CheckBox(
              'I have at least 18 years old.'
              ),
            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
            child: const Text(
              'Next',
              style: TextStyle(
                color: Colors.white, fontSize: 16
                ),
            ),
            
            style: appPrimaryButton,
            
            onPressed: () => {
              if(!_signFormKey.currentState.validate()){
                
              }
              else{
                _signFormKey.currentState.save(),
                print(_email),
                print(_password),  

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpPhoneVerifyScreen()))               
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

              validator: (String value){
                if(value == null || value.isEmpty){
                  return 'Password is Required';
                }
                
                if(!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$').hasMatch(value)){
                  return 'Enter valid password';
                }
                return null;
              },
              
              onSaved: (String value){
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
            labelStyle: const TextStyle(
                color: Colors.black45
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  color: kPrimaryColor
              ),
            ),
        ),

      validator: (String value){
        if(value == null || value.isEmpty){
          return 'Email is Required';
        }

        if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      
      onSaved: (String value){
        _email = value;
      },

      ),
    );
  }

}