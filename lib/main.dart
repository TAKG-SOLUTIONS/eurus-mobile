import 'package:eurus_mobile/screens/main_page.dart';
import 'package:eurus_mobile/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:loggy/loggy.dart';

import 'screens/login.dart';
import 'package:provider/provider.dart';

import 'widgets/widgets_for_settings/notifier.dart';

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
    logOptions: const LogOptions(
      LogLevel.all,
      stackTraceLevel: LogLevel.off,
    ),
  );

  runApp(const ExchangeApp());
}

class ExchangeApp extends StatelessWidget {
  const ExchangeApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SingleNotifier>(
          create: (_) => SingleNotifier(),
          ),
        
        ChangeNotifierProvider(
          create: (_) => MultipleNotifier([]),
          ),

        ChangeNotifierProvider<SingleNotifierCurrency>(
          create: (_) => SingleNotifierCurrency(),
          ),
        ],
        

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const SplashScreen(),
      ),
    );
  }
}
