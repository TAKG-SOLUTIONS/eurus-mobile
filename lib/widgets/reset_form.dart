import 'package:eurus_mobile/screens/login.dart';
import 'package:eurus_mobile/widgets/app_button_themes.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class ResetForm extends StatefulWidget {
  const ResetForm({Key key}) : super(key: key);

  
  @override
  _ResetFormState createState() => _ResetFormState();
}

class _ResetFormState extends State<ResetForm> {

  String _email;

 final GlobalKey<FormState> _resetFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _resetFormKey,
      child: Column(
        children: [
          buildInputEmail('Email'),

            const SizedBox(
              height: 20,
            ),
            
            ElevatedButton(
            child: const Text(
              'Reset Password',
              style: TextStyle(
                color: Colors.white, fontSize: 16
                ),
            ),
            
            style: appPrimaryButton,

            onPressed: () => {
              if(!_resetFormKey.currentState.validate()){
                
              }
              else{
                _resetFormKey.currentState.save(),
                print(_email), 

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LogInScreen()))               
              },
            },
          ),
    
        ],
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
