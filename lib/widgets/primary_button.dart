import 'package:flutter/material.dart';
import '../theme.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  PrimaryButton({@required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14), color: Color(0xff276EF1)),
      child: Text(
        buttonText,
        style: textButton.copyWith(color: kWhiteColor),
      ),
    );
  }
}
