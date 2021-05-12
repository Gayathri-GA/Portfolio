import 'package:flutter/material.dart';
import 'package:portfolio/routes/no_transition.dart';
import 'package:portfolio/routes/portfolio.dart';
import 'package:portfolio/routes/portfolio_route_path.dart';
import 'package:portfolio/screens/home/homescreen.dart';
import 'package:portfolio/screens/home/portfolio_description.dart';

class PortfolioRouterDelegate extends RouterDelegate<PortfolioRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<PortfolioRoutePath> {
  final GlobalKey<NavigatorState> navigatorKey;

  Portfolio _selectedPage;
  bool show404 = false;

  List<Portfolio> pages = [
    Portfolio('Youtube'),
    Portfolio('Blogs'),
    Portfolio('Tech Talks'),
    Portfolio('Open Source Contribution')
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
      transitionDelegate: NoAnimationTransitionDelegate(),
      pages: [
        MaterialPage(
          key: ValueKey('Portfolio'),
          child: HomeScreen(
            pageName: pages,
            showPage: _handlePageTapped,
          ),
        ),
        if (_selectedPage != null) PortfolioDescription(portfolio: _selectedPage)
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
