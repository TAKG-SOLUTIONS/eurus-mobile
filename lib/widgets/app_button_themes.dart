import 'package:flutter/material.dart';

ButtonStyle appPrimaryButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color(0xff276EF1)),
    overlayColor: MaterialStateProperty.all(Colors.blue),
    elevation: MaterialStateProperty.all(8),
    fixedSize: MaterialStateProperty.all(const Size(240, 40)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));

ButtonStyle appPrimaryHomeButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(const Color(0xff276EF1)),
    overlayColor: MaterialStateProperty.all(Colors.blue),
    elevation: MaterialStateProperty.all(8),
    fixedSize: MaterialStateProperty.all(const Size(190, 40)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))));

ButtonStyle appMarketsBuyButton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 6, 190, 0)),
    overlayColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 10, 224, 45)),
    elevation: MaterialStateProperty.all(6),
    fixedSize: MaterialStateProperty.all(const Size(140, 30)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))));

ButtonStyle appMarketsSellButton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 209, 25, 25)),
    overlayColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 234, 86, 86)),
    elevation: MaterialStateProperty.all(6),
    fixedSize: MaterialStateProperty.all(const Size(140, 30)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))));

ButtonStyle appWalletsBuyButton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 6, 190, 0)),
    overlayColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 10, 224, 45)),
    elevation: MaterialStateProperty.all(6),
    fixedSize: MaterialStateProperty.all(const Size(200, 45)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))));

ButtonStyle appTradesBuyButton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 6, 190, 0)),
    overlayColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 10, 224, 45)),
    elevation: MaterialStateProperty.all(6),
    fixedSize: MaterialStateProperty.all(const Size(300, 60)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))));

ButtonStyle appWalletsSellButton = ButtonStyle(
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 209, 25, 25)),
    overlayColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 234, 86, 86)),
    elevation: MaterialStateProperty.all(6),
    fixedSize: MaterialStateProperty.all(const Size(200, 45)),
    shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))));
