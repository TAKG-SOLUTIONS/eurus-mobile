import 'package:cached_network_image/cached_network_image.dart';
import 'package:eurus_mobile/models/chart_data_model.dart';
import 'package:eurus_mobile/models/fetchCoins_models/data_model.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:eurus_mobile/widgets/widgets_for_trades/sliver_widget.dart';
import 'package:eurus_mobile/widgets/widgets_for_trades/toggle_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'dart:math';

import 'package:syncfusion_flutter_charts/charts.dart';

import '../widgets/app_button_themes.dart';
import 'main_page.dart';

class CoinChartScreen extends StatefulWidget {
  final DataModel coin;
  const CoinChartScreen({key, this.coin}) : super(key: key);

  @override
  State<CoinChartScreen> createState() => _CoinChartScreenState();
}

class _CoinChartScreenState extends State<CoinChartScreen> {
  final List<bool> _isSelected = [true, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    var coinIconUrl =
        "https://raw.githubusercontent.com/spothq/cryptocurrency-icons/master/128/color/";
    var coinPrice = widget.coin.quoteModel.usdModel;
    DateTime parseDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(coinPrice.lastUpdated);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('MM/dd/yyyy hh:mm a');
    var outputDate = outputFormat.format(inputDate);

    // radom values for coin chart - don't have detail API
    Random random = Random();

    int next(int min, int max) => random.nextInt(max - min);
    List<ChartData> data = [
      ChartData(next(110, 140), 1),
      ChartData(next(9, 41), 2),
      ChartData(next(140, 200), 3),
      ChartData(coinPrice.percentChange_24h, 4),
      ChartData(coinPrice.percentChange_1h, 5),
      ChartData(next(110, 140), 6),
      ChartData(next(9, 41), 7),
      ChartData(next(140, 200), 8),
      ChartData(coinPrice.percentChange_24h, 9),
      ChartData(coinPrice.percentChange_1h, 10),
      ChartData(next(110, 140), 12),
      ChartData(next(9, 41), 13),
      ChartData(coinPrice.percentChange_1h, 14),
      ChartData(next(9, 41), 15),
      ChartData(next(140, 200), 16),
      ChartData(coinPrice.percentChange_24h, 17),
      ChartData(coinPrice.percentChange_1h, 18),
      ChartData(next(110, 140), 19),
      ChartData(next(9, 41), 20),
      ChartData(next(140, 200), 21),
      ChartData(coinPrice.percentChange_24h, 22),
      ChartData(next(110, 140), 23),
    ];

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36.0)),
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 100.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                padding: const EdgeInsets.fromLTRB(0.0, 18.0, 4.4, 0.0),
                // padding: EdgeInsets.fromLTRB(left, top, right, bottom),
                width: double.infinity,
                height: 56.0,
                child: ListTile(
                  leading: SizedBox(
                    height: 40.0,
                    width: 40.0,
                    child: CachedNetworkImage(
                      imageUrl: ((coinIconUrl + widget.coin.symbol + ".png")
                          .toLowerCase()),
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          SvgPicture.asset('images/dollar.svg'),
                    ),
                  ),
                  title: Text(
                    widget.coin.name +
                        " " +
                        widget.coin.symbol +
                        " #" +
                        widget.coin.cmcRank.toString(),
                    style: subTitleWhite,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              background: Image.asset(
                "images/trades_banner.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: SliverAppBarDelegate(
              maxHeight: 360.0,
              minHeight: 360.0,
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Column(children: [
                  Text(
                    "\$" +
                        widget.coin.quoteModel.usdModel.price
                            .toStringAsFixed(2),
                    style: secondTitleText,
                  ),
                  Text(
                    outputDate,
                    style: subLineTextBlack,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 4.0),
                      height: 96.0,
                      width: double.infinity,
                      child: SfCartesianChart(
                        borderWidth: 4,
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
                            yValueMapper: (ChartData sales, _) => sales.value,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ToggleButtons(
                    borderRadius: BorderRadius.circular(10.0),
                    borderColor: Colors.blueGrey,
                    color: Colors.white,
                    fillColor: const Color.fromARGB(255, 92, 192, 255),
                    selectedColor: Colors.white,
                    selectedBorderColor: Colors.blueGrey,
                    children: const <Widget>[
                      ToggleButtonWidget(name: "Today"),
                      ToggleButtonWidget(name: "1W"),
                      ToggleButtonWidget(name: "1M"),
                      ToggleButtonWidget(name: "3M"),
                      ToggleButtonWidget(name: "6M"),
                    ],
                    isSelected: _isSelected,
                    onPressed: (int newIndex) {
                      setState(() {
                        for (int i = 0; i < _isSelected.length; i++) {
                          if (i == newIndex) {
                            _isSelected[i] = true;
                          } else {
                            _isSelected[i] = false;
                          }
                        }
                      });
                    },
                  ),
                ]),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 440,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  height: 400.0,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 4.0,
                  ),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Circulating Supply: ",
                          style: subTitleBlack,
                        ),
                        Text(
                          widget.coin.circulatingSupply.toString(),
                          style: subTitleBlack,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Max Supply: ",
                          style: subTitleBlack,
                        ),
                        Text(
                          widget.coin.maxSupply.toString(),
                          style: subTitleBlack,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Market Pairs: ",
                          style: subTitleBlack,
                        ),
                        Text(
                          widget.coin.numMarketPairs.toString(),
                          style: subTitleBlack,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Market Cap: ",
                          style: subTitleBlack,
                        ),
                        Text(
                          widget.coin.quoteModel.usdModel.marketCap.toString(),
                          style: subTitleBlack,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      child: Text(
                        "Buy " + widget.coin.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      style: appTradesBuyButton,
                      onPressed: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()))
                      },
                    ),
                  ]),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
