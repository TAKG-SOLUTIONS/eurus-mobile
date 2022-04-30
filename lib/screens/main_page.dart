import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eurus_mobile/screens/home.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int value = 0;
  var pageName = 'Home';

  final screens = [
    const HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
      
      final items = <Widget>[
      const Icon(Icons.home_outlined, size: 30),
      const Icon(Icons.sell_rounded, size: 30),
      const Icon(Icons.analytics_outlined, size: 30),
      const Icon(Icons.account_balance_wallet_outlined, size: 30),
      const Icon(Icons.account_circle_outlined, size: 30),
    ];

    if(value == 0){
      pageName = 'Home';
    }
    else if(value == 1){
      pageName = 'Trades';
    }
    else if(value == 2){
      pageName = 'Markets';
    }
    else if(value == 3){
      pageName = 'Wallet';
    }
    else{
      pageName = 'Profile';
    }

    return Scaffold(
      extendBody: true,
        appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            '$pageName'
          ),
        ),
        backgroundColor: kAppBarColor,
      ),
      
      body: Center(
        child: Text(
          '$value',
          style: titleText,
        ),
      ),

      // body: screens[value],  

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: const IconThemeData(color: kBlackColor),
          ),
          child: CurvedNavigationBar(
            color: kDarkGreyColor,
            buttonBackgroundColor: Colors.blue,
            backgroundColor: Colors.transparent,
            height: 60,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 500),
            index: value,
            items: items,
            onTap: (value) => setState(() => this.value = value),
        
              ),
        ),
    );
  }
}