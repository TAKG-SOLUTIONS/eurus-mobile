import 'package:eurus_mobile/theme.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //   appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: const Center(
      //     child: Text(
      //       'Home'
      //     ),
      //   ),
      //   backgroundColor: kAppBarColor,
      // ),
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              Text(
                'Home Page',
                style: titleText,
              ),
            ],
            ),
          ),
        ),
    );
  }
}