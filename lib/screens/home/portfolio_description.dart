import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/blogs/blogs.dart';
import 'package:portfolio/screens/open_source/open_source.dart';
import 'package:portfolio/screens/tech_talks/tech_talks.dart';
import 'package:portfolio/screens/youtube/youtube.dart';

class PortfolioDescription extends Page {
  final Portfolio portfolio;

  PortfolioDescription({
    this.portfolio,
  }) : super(key: ValueKey(portfolio));

  Route createRoute(BuildContext context) {
    if (portfolio.page == 'About') {
      return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return AboutSection(portfolio: portfolio);
        },
      );
    } else if (portfolio.page == 'Youtube') {
      return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return Youtube(portfolio: portfolio);
        },
      );
    } else if (portfolio.page == 'Blogs') {
      return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return Blogs(portfolio: portfolio);
        },
      );
    } else if (portfolio.page == 'Tech Talks') {
      return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return TechTalks(portfolio: portfolio);
        },
      );
    } else {
      return MaterialPageRoute(
        settings: this,
        builder: (BuildContext context) {
          return OpenSource(portfolio: portfolio);
        },
      );
    }
  }
}
