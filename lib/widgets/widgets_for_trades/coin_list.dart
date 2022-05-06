import 'package:cached_network_image/cached_network_image.dart';
import 'package:eurus_mobile/models/fetchCoins_models/data_model.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/chart_data_model.dart';
import '../../screens/coin_chart_screen.dart';

class CoinList extends StatelessWidget {
  final List<DataModel> coins;
  const CoinList({key, this.coins}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: kDefaultPadding,
          child: Text(
            "Crypto Currencies",
            style: secondTitleText,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Expanded(
            child: ListView.builder(
                itemExtent: 160.0,
                itemCount: coins.length,
                itemBuilder: (context, index) {
                  var coin = coins[index];
                  var coinPrice = coin.quoteModel.usdModel;
                  var data = [
                    ChartData(coinPrice.percentChange_90d, 2160),
                    ChartData(coinPrice.percentChange_60d, 1440),
                    ChartData(coinPrice.percentChange_30d, 720),
                    ChartData(coinPrice.percentChange_24h, 24),
                    ChartData(coinPrice.percentChange_1h, 1),
                  ];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  CoinChartScreen(coin: coins[index]))));
                    },
                    child: Container(
                      height: 160.0,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(105, 118, 225, 255),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 16.0),
                            height: 96.0,
                            width: 96.0,
                            child: Column(children: [
                              SizedBox(
                                height: 50.0,
                                width: 50.0,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      ((coinIconUrl + coin.symbol + ".png")
                                          .toLowerCase()),
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      SvgPicture.asset('images/dollar.svg'),
                                ),
                              ),
                              const SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                coins[index].symbol,
                                style: subLineTextBlack,
                              ),
                              const SizedBox(
                                height: 2.0,
                              ),
                              Text(
                                "\$" +
                                    coins[index]
                                        .quoteModel
                                        .usdModel
                                        .price
                                        .toStringAsFixed(2),
                                style: miniLineTextBold,
                              ),
                            ]),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 4.0),
                              height: 96.0,
                              width: double.infinity,
                              child: SfCartesianChart(
                                plotAreaBorderWidth: 0,
                                primaryXAxis: CategoryAxis(isVisible: false),
                                primaryYAxis: CategoryAxis(isVisible: false),
                                legend: Legend(isVisible: false),
                                tooltipBehavior: TooltipBehavior(enable: false),
                                series: <ChartSeries<ChartData, String>>[
                                  LineSeries<ChartData, String>(
                                    dataSource: data,
                                    xValueMapper: (ChartData sales, _) =>
                                        sales.year.toString(),
                                    yValueMapper: (ChartData sales, _) =>
                                        sales.value,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            margin: const EdgeInsets.only(right: 16.0),
                            alignment: Alignment.center,
                            width: 72,
                            height: 36,
                            decoration: BoxDecoration(
                                color: coinPrice.percentChange_7d >= 0
                                    ? Colors.green
                                    : Colors.red,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Text(
                              coinPrice.percentChange_7d.toStringAsFixed(2) +
                                  "%",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }))
      ]),
    );
  }
}
