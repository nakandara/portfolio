import 'package:flutter/material.dart';
import 'package:prot44/coolors.dart';
import 'package:velocity_x/velocity_x.dart';

import 'middle.dart';
import 'header.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Coolers.primaryColor,
      child: VStack([
        HeaderScreen(),
        if (context.isMobile) IntroductionWidget().p16(),
        MiddleScreen(),
        FooterScreen(),
      ]).scrollVertical(),
    );
  }
}
