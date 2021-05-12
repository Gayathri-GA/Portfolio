import 'package:flutter/material.dart';
import 'package:portfolio/routes/portfolio_route_path.dart';

class PortfolioRouteInformationParser extends RouteInformationParser<PortfolioRoutePath> {
  @override
  Future<PortfolioRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location);
    // Handle '/'
    if (uri.pathSegments.length == 0) {
      return PortfolioRoutePath.home();
    }

    // Handle '//:id'
    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'portfolio') return PortfolioRoutePath.unknown();
      var remaining = uri.pathSegments[1];
      var id = int.tryParse(remaining);
      if (id == null) return PortfolioRoutePath.unknown();
      return PortfolioRoutePath.details(id);
    }

    // Handle unknown routes
    return PortfolioRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(PortfolioRoutePath path) {
    if (path.isUnknown) {
      return RouteInformation(location: '/404');
    }
    if (path.isHomePage) {
      return RouteInformation(location: '/');
    }
    if (path.isSubPage) {
      return RouteInformation(location: '/portfoliopage/${path.id}');
    }
    return null;
  }
}
