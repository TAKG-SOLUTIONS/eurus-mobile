import 'package:eurus_mobile/screens/settings.dart';
import 'package:eurus_mobile/theme.dart';
import 'package:eurus_mobile/widgets/widgets_for_settings/list_data.dart';
import 'package:eurus_mobile/widgets/widgets_for_settings/notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key key}) : super(key: key);


  
  @override
  _SettingsView createState() => _SettingsView();
}

class _SettingsView extends State<SettingsView> {
  get child => null;



  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          GestureDetector(
            onTap: () => _showPushNotifyDialog(context),

            child: const ProfileListItem(
              icon: Icons.notifications_outlined,
              text: 'Push Notifications',
              hasNavigation: false,
            ),
          ),
          
          GestureDetector(
            onTap: () => _showLanguagesDialog(context),

            child: const ProfileListItem(
              icon: LineAwesomeIcons.language,
              text: 'Language',
              hasNavigation: false,
            ),
          ),

          GestureDetector(
            onTap: () => _showCurrencyDialog(context),

            child: const ProfileListItem(
              icon: Icons.currency_exchange_outlined,
              text: 'Currency',
              hasNavigation: false,
            ),
          ),

          GestureDetector(
            onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsScreen()));
                  },
            child: const ProfileListItem(
              icon: Icons.wb_sunny_outlined,
              text: 'Appearance',
              hasNavigation: false,
            ),
          ),

          GestureDetector(
            onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsScreen()));
                  },
            child: const ProfileListItem(
              icon: Icons.list_alt_outlined,
              text: 'Terms of Use',
            ),
          ),

          GestureDetector(
            onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SettingsScreen()));
                  },
            child: const ProfileListItem(
              icon: Icons.shield_outlined,
              text: 'Privacy Policy',
            ),
          ),

          GestureDetector(
            onTap: () => _showMessageDialog(context),
            child: const ProfileListItem(
              icon: LineAwesomeIcons.users,
              text: 'About Us',
            ),
          ),
          
        ],
      );
  }
}


class ProfileListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String textValue;
  final bool hasNavigation;
  
  const ProfileListItem({
    Key key, 
    this.icon, 
    this.text,
    this.textValue, 
    this.hasNavigation = true,
  }) : super(key: key);


@override
  Widget build(BuildContext context) {
    return Container(
      height: kSpacingUnit.w * 5.5,
      margin: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 5,
      ).copyWith(
        bottom: kSpacingUnit.w * 2,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: kSpacingUnit.w * 2,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kSpacingUnit.w * 3),
        color: Theme.of(context).backgroundColor,
      ),
      child: Row(
          children: <Widget>[
            Icon(
              icon,
              size: kSpacingUnit.w * 2.5,
            ),
            SizedBox(width: kSpacingUnit.w * 2.5),
            Text(
              text,
              style: kTitleTextStyle.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            if(hasNavigation)
            Icon(
              LineAwesomeIcons.angle_right,
              size: kSpacingUnit.w * 2.5,
            )
          ]
        ),
    );
  }
}


_showMessageDialog(BuildContext context) => showDialog(
  context: context, 
  builder: (context) => AlertDialog(
   title: const Text(
     'About Us'
   ), 
   content: const Text(
     'Test'
   ),
   actions: [
     TextButton(
      child: const Text('OK'),
       onPressed: () => Navigator.of(context).pop(), 
       ),
   ],
  ));


_showLanguagesDialog(BuildContext context) => showDialog(
  context: context, 
  builder: (context){
    final _singleNotifier = Provider.of<SingleNotifier>(context);
    return AlertDialog(
      title: const Text(
        'Select Language'
      ),
      content: SingleChildScrollView(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: languages.map((e) => RadioListTile(
                title: Text(e),
                value: e, 
                groupValue: _singleNotifier.currentLanguage, 
                selected: _singleNotifier.currentLanguage == e,
                onChanged: (value){
                  _singleNotifier.updateLanguage(value);
                  Navigator.of(context).pop();
                }
              ),
            ).toList()),
          ),
        ),
    );
  }
);


_showPushNotifyDialog(BuildContext context) => showDialog(
  context: context, 
  builder: (context) {
    final _multipleNotifier = Provider.of<MultipleNotifier>(context);
    return AlertDialog(
      title: const Text(
        'Push Notifications'
      ),
      content: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: notifications.map((e) => CheckboxListTile(
              title: Text(e),
              onChanged: (value){
                value ? _multipleNotifier.addItem(e)
                : _multipleNotifier.removeItem(e);
              },
              value: _multipleNotifier.isHaveItem(e),
            )).toList(),
          ),
        ),
      ),
    );
  }
  );


_showCurrencyDialog(BuildContext context) => showDialog(
  context: context, 
  builder: (context){
    final _singleNotifierCurrency = Provider.of<SingleNotifierCurrency>(context);
    return AlertDialog(
      title: const Text(
        'Select Currency'
      ),
      content: SingleChildScrollView(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: currency.map((e) => RadioListTile(
                title: Text(e),
                value: e, 
                groupValue: _singleNotifierCurrency.currentCurrency, 
                selected: _singleNotifierCurrency.currentCurrency == e,
                onChanged: (value){
                  _singleNotifierCurrency.updateCurrency(value);
                  Navigator.of(context).pop();
                }
              ),
            ).toList()),
          ),
        ),
    );
  }
);
