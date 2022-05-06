import 'package:dio/dio.dart';
import '../models/fetchCoins_models/big_data_model.dart';

class Repository {
  static String mainUrl = "https://pro-api.coinmarketcap.com/v1/";
  final String apiKey = "257bcb4c-5bc8-411f-ada5-a2b854ec66df";
  var currencyListingAPI = '${mainUrl}cryptocurrency/listings/latest';
  final Dio _dio = Dio();
  Future<BigDataModel> getCoins() async {
    try {
      _dio.options.headers["X-CMC_PRO_API_KEY"] = apiKey;
      Response response = await _dio.get(currencyListingAPI);
      return BigDataModel.fromJson((response.data));
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return BigDataModel.withError("error");
    }
  }
}
