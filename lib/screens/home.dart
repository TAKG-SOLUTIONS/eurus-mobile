import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

import '../variables.dart';
import '../widgets/app_button_themes.dart';
import 'main_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/home_banner.png',
                    width: 400,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Divider(
                height: 40,
                thickness: 2,
                color: kDarkGreyColor,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/buy_crypto_banner.png',
                    width: 220,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
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
                height: 10,
              ),
              Padding(
                padding: kDefaultPadding,
                child: Row(
                  children: [
                    ElevatedButton(
                      child: const Text(
                        'Buy',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: appMarketsBuyButton,
                      onPressed: () => {
                        pageNumber = 2,
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen())),
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      child: const Text(
                        'Sell',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      style: appMarketsSellButton,
                      onPressed: () => {
                        pageNumber = 2,
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()))
                      },
                    ),
                  ],
                ),
              ),
              const Divider(
                height: 40,
                thickness: 2,
                color: kDarkGreyColor,
              ),
              Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      'Cryptocurrency List',
                      style: subTitleBlack,
                    ),
                  ),
                  const Divider(
                    height: 30,
                    thickness: 2,
                    indent: 80,
                    endIndent: 80,
                    color: kDarkGreyColor,
                  ),
                  ElevatedButton(
                    child: const Text(
                      'View Crypto',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    style: appPrimaryHomeButton,
                    onPressed: () => {
                      pageNumber = 1,
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainScreen()))
                    },
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
