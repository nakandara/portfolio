import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:prot44/coolors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'dart:ui';
import 'dart:math';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameWidget = "Pramod\nNiroshan."
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 10 : 10)
        .bold
        .make()
        .shimmer();
    return SafeArea(
      child: VxBox(
              child: VStack([
        ZStack(
          [
            PictureWidget(),
            Row(
              children: [
                VStack([
                  if (context.isMobile) 50.heightBox else 10.heightBox,
                  CustomAppBar().shimmer(primaryColor: Coolers.accentColor),
                  15.heightBox,
                  nameWidget,
                  20.heightBox,
                  VxBox()
                      .color(Coolers.accentColor)
                      .size(60, 10)
                      .make()
                      .px4()
                      .shimmer(primaryColor: Coolers.accentColor),
                  25.heightBox,
                  SocialAccounts(),
                ]).pSymmetric(
                  h: context.percentWidth * 8,
                  v: 20,
                ),
                Expanded(
                  child: VxResponsive(
                    medium: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    large: IntroductionWidget()
                        .pOnly(left: 120)
                        .h(context.percentHeight * 60),
                    fallback: const Offstage(),
                  ),
                )
              ],
            ).w(context.screenWidth)
          ],
        )
      ]))
          .size(context.screenWidth, context.percentHeight * 67)
          .color(Coolers.secondaryColor)
          .make(),
    );
  }
}

class IntroductionWidget extends StatelessWidget {
  const IntroductionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack(
      [
        [
          " - Introduction".text.gray500.widest.sm.make(),
          10.heightBox,
          "Hi I,m pramod  niroshan \n i'm ( web ,mobile )  application developer.I can do application development through flutter.\n I can also use Java, Java script, NodeJs, Mongo db, Sql."
              .text
              .white
              .xl3
              .maxLines(5)
              .make()
              .w(context.isMobile
                  ? context.screenWidth
                  : context.percentWidth * 40),
          20.heightBox,
        ].vStack(),
        RaisedButton(
          onPressed: () {
            launch(
                "https://objective-lewin-4d39b8.netlify.app/?fbclid=IwAR1T7J-Mmx3Una9mWt8V8rU_JA76d9-fppcH7ykifkxcEP9QJGjFabvheeY");
          },
          hoverColor: Vx.purple700,
          shape: Vx.roundedSm,
          color: Coolers.accentColor,
          textColor: Coolers.primaryColor,
          child: "Visit pramod blog".text.make(),
        ).h(50)
      ],
      // crossAlignment: CrossAxisAlignment.center,
      alignment: MainAxisAlignment.spaceEvenly,
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: Coolers.accentColor,
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      origin: Offset(context.percentWidth * 20, 0),
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/nn.jpg",
        fit: BoxFit.cover,
        height: context.percentHeight * 67,
      ),
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/pramod-nakandara97n/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.instagram,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.instagram.com/w.g.p.nnakandara/");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.facebook_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.facebook.com/pramod.niroshan.376");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.youtube,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.youtube.com/channel/UCfk4pIK1GmOTc9UX0xcghQw");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/nakandara");
      }).make()
    ].hStack();
  }
}
