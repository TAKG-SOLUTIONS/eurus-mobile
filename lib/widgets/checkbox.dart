import 'package:flutter/material.dart';
import '../theme.dart';

class CheckBox extends StatefulWidget {
  final String text;

  const CheckBox(this.text, {Key key}) : super(key: key);
  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: kDarkGreyColor)),
                child: _isSelected
                    ? Icon(
                        Icons.check,
                        size: 17,
                        color: Colors.green,
                      )
                    : null,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(widget.text),
          ],
        )
      ],
    );
  }
}

// class CheckBox extends StatefulWidget {
//   final String text;

//   const CheckBox(this.text, {Key key}) : super(key: key);
//   @override
//   _CheckBoxState createState() => _CheckBoxState();

// }

// class _CheckBoxState extends State<CheckBox> {
//   bool _isChecked = false;
//   bool _isSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Checkbox(
//               value: _isChecked,
//               onChanged: (bool bValue){
//                 setState(() {
//                   _isChecked = bValue;
//                 });
//               },
//             ),

//           GestureDetector(
//             onTap: () {
//               setState(() {
//                 _isSelected = !_isSelected;
//               });
//             },
//             child: Container(
//               width: 20,
//               height: 20,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(4),
//                   border: Border.all(color: kDarkGreyColor)),
//               child: _isSelected
//                   ? Icon(
//                       Icons.check,
//                       size: 17,
//                       color: Colors.green,
//                     )
//                   : null,
//             ),
//           ),

//           SizedBox(
//             width: 12,
//           ),
//           Text(widget.text),

//         ],
//         )
//       ],
//     );
//   }

// }
