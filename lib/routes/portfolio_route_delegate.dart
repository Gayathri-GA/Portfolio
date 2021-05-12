import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/routes/portfolio_route_path.dart';
import 'package:portfolio/screens/about/about.dart';
import 'package:portfolio/screens/blogs/blogs.dart';
import 'package:portfolio/screens/home/homescreen.dart';
import 'package:portfolio/screens/open_source/open_source.dart';
import 'package:portfolio/screens/tech_talks/tech_talks.dart';
import 'package:portfolio/screens/youtube/youtube.dart';

class PortfolioRouterDelegate extends RouterDelegate<PortfolioRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PortfolioRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  Portfolio _selectedPage;
  bool show404 = false;

  List<Portfolio> pages = [
    Portfolio(AboutSection(), 'About'),
    Portfolio(Youtube(), 'Youtube'),
    Portfolio(Blogs(), 'Blogs'),
    Portfolio(TechTalks(), 'Tech Talks'),
    Portfolio(OpenSource(), 'Open Source Contribution')
  ];

  PortfolioRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  PortfolioRoutePath get currentConfiguration {
    if (show404) {
      return PortfolioRoutePath.unknown();
    }
    return _selectedPage == null
        ? PortfolioRoutePath.home()
        : PortfolioRoutePath.details(pages.indexOf(_selectedPage));
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      pages: [
        MaterialPage(
          key: ValueKey('Portfolio'),
          child: HomeScreen(
            pageName: pages,
            showPage: _handlePageTapped,
          ),
        ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        // Update the list of pages by setting _selectedPage to null
        _selectedPage = null;
        show404 = false;
        notifyListeners();
        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(PortfolioRoutePath path) async {
    if (path.isUnknown) {
      _selectedPage = null;
      show404 = true;
      return;
    }

    if (path.isSubPage) {
      if (path.id < 0 || path.id > pages.length - 1) {
        show404 = true;
        return;
      }
      _selectedPage = pages[path.id];
    } else {
      _selectedPage = null;
    }

    show404 = false;
  }

  void _handlePageTapped(Portfolio page) {
    _selectedPage = page;
    notifyListeners();
  }
}
