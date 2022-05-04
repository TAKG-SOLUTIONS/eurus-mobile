import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

import '../widgets/app_button_themes.dart';
import 'main_page.dart';

class WalletsScreen extends StatelessWidget {
  const WalletsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double balance = 0.00;

    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Total Balance',
                      style: titleText,
                    ),
                    Text(
                      balance.toDouble().toString(),
                      style: secondTitleText,
                    ),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  const SizedBox(
                    height: 40,
                  ),
                  const Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('images/wallet icon.png'),
                      backgroundColor: kWhiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Text(
                      'Get started with crypto',
                      style: subTitle,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    child: const Text(
                      'Buy',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    style: appWalletsBuyButton,
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()))
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const Text(
                      'Sell',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    style: appWalletsSellButton,
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()))
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
