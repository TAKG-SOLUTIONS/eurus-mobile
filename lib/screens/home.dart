import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';

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
                    'images/home_banner.jpg',
                    width: 400,
                    height: 140,
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
            ],
          ),
        ),
      ),
    );
  }
}
