import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/screens/youtube/youtube.dart';

class PortfolioDescription extends Page {
  final Portfolio portfolio;

  PortfolioDescription({
    this.portfolio,
  }) : super(key: ValueKey(portfolio));

  Route createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (BuildContext context) {
        return Youtube(portfolio: portfolio);
      },
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  final Portfolio portfolio;
  PortfolioScreen({
    this.portfolio,
  });
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
