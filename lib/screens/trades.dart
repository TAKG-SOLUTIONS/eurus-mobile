import 'package:flutter/material.dart';

import '../models/fetchCoins_models/big_data_model.dart';
import '../repository/repository.dart';
import '../widgets/widgets_for_trades/coin_list.dart';

class TradesScreen extends StatefulWidget {
  const TradesScreen({Key key}) : super(key: key);

  @override
  State<TradesScreen> createState() => _TradesScreenState();
}

class _TradesScreenState extends State<TradesScreen> {
  Future<BigDataModel> _futureCoins;
  Repository repository;
  @override
  void initState() {
    repository = Repository();
    _futureCoins = repository.getCoins();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BigDataModel>(
      future: _futureCoins,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            var coinsData = snapshot.data.dataModel;
            return CoinList(coins: coinsData);
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
