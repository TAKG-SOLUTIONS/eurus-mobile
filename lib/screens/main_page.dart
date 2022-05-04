import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eurus_mobile/screens/home.dart';
import 'package:eurus_mobile/screens/markets.dart';
import 'package:eurus_mobile/screens/profile.dart';
import 'package:eurus_mobile/screens/trades.dart';
import 'package:eurus_mobile/screens/wallet.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:eurus_mobile/variables.dart';

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
    const TradesScreen(),
    MarketScreen(),
    const WalletsScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
      
      final items = <Widget>[
      const Icon(Icons.home_outlined, size: 30),
      const Icon(Icons.currency_exchange_outlined, size: 30),
      const Icon(Icons.equalizer_rounded, size: 30),
      const Icon(Icons.account_balance_wallet_outlined, size: 30),
      const Icon(Icons.account_circle_outlined, size: 30),
    ];

    if(pageNumber > 0 && pageNumber < 4){
      value = pageNumber;
      pageNumber = 0;
    }


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
      pageName = 'Wallets';
    }
    else{
      pageName = 'Profile';
    }
    
  Future<bool> _onWillPop() async{
    return (await showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Are you sure?'),
          content: const Text('Do you want to exit an App'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false), //<-- SEE HERE
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true), // <-- SEE HERE
              child: const Text('Yes'),
            ),
          ],
        ),
      )) ??
      false;
  }


    return WillPopScope(
      onWillPop: _onWillPop,
      child: Container(
        color: kDarkGreyColor,
        child: SafeArea(
          top: false,
          child: ClipRect(
            child: Scaffold(
              extendBody: true,
                appBar: AppBar(
                automaticallyImplyLeading: false, // for defual appbar back arrow
                title: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                      child: Text(
                        pageName
                      ),
                  ),
                ),
                // actions: <Widget>[
                //   IconButton(onPressed: onPressed, icon: icon)
                // ],
                backgroundColor: kAppBarColor,
              ),
              
              // body: Center(
              //   child: Text(
              //     '$value',
              //     style: titleText,
              //   ),
              // ),
                
              body: screens[value],  
                
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
                    animationDuration: const Duration(milliseconds: 400),
                    index: value,
                    items: items,
                    onTap: (value) => setState(() => this.value = value),
                
                      ),
                ),
            ),
          ),
        ),
      ),
    );
  }
}