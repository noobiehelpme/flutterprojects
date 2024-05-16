import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sonylive/widgets/settings_ui.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SettingUi())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
     
      decoration: const BoxDecoration(
          image: DecorationImage(
              
              
              image: NetworkImage(
                
                  'https://dtat2ks7dludr.cloudfront.net/spnsportsindia/images/all-logos4.gif'))),
    );
  }
}

