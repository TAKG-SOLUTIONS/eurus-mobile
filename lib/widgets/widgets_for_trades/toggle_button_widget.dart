import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

class ToggleButtonWidget extends StatelessWidget {
  final String name;
  const ToggleButtonWidget({
    key,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (MediaQuery.of(context).size.width - 38) / 5,
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          name,
          style: subLineTextBlack,
        ),
      ),
    );
  }
}