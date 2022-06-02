import 'package:eurus_mobile/screens/main_page.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:eurus_mobile/variables.dart';
import 'package:flutter/material.dart';

import '../widgets/app_button_themes.dart';
import '../widgets/coin_card.dart';

// ignore: must_be_immutable
class MarketScreen extends StatelessWidget {
  MarketScreen({Key key}) : super(key: key);

  int pageNumberValue;

  @override
  Widget build(BuildContext context) {
    var marketsHeader = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        const Center(
          child: CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('images/yakka-coin.png'),
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
        const SizedBox(
          height: 30,
        ),
        Text(
          'Favorite Currencies',
          style: subTitleBlack,
        ),
        const Divider(
          height: 10,
          thickness: 2,
          color: kDarkGreyColor,
        ),
      ],
    );

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: kDefaultPadding,
            child: marketsHeader,
          ),
          GestureDetector(
            onTap: () {
              pageNumber = 1;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
            child: CoinCard(
              name: 'Bitcoin',
              symbol: 'BTC',
              imageUrl: 'images/bitcoin.png',
              price: 29137.10,
              change: 2149.79,
              changePercentage: -6.88,
            ),
          ),
          GestureDetector(
            onTap: () {
              pageNumber = 1;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
            child: CoinCard(
              name: 'Ethereum',
              symbol: 'ETH',
              imageUrl: 'images/ethereum.png',
              price: 2033.71,
              change: -256.69,
              changePercentage: -11.21,
            ),
          ),
          GestureDetector(
            onTap: () {
              pageNumber = 2;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainScreen()));
            },
            child: CoinCard(
              name: 'YAKKA',
              symbol: 'YKK',
              imageUrl: 'images/coin-simple-logo-black.png',
              price: 203.71,
              change: 25.69,
              changePercentage: 4.21,
            ),
          ),
        ],
      ),
    );
  }
}
