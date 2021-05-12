import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio_route_parser.dart';

import 'routes/portfolio_route_delegate.dart';

class App extends StatelessWidget {
  PortfolioRouterDelegate _routerDelegate = PortfolioRouterDelegate();
  PortfolioRouteInformationParser _routeInformationParser = PortfolioRouteInformationParser();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: 'Itim-Regular'),
      routerDelegate: _routerDelegate,
      routeInformationParser: _routeInformationParser,
      debugShowCheckedModeBanner: false,
    );
  }
}
