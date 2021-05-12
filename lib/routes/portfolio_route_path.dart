class PortfolioRoutePath {
  final int id;
  final bool isUnknown;

  PortfolioRoutePath.home()
      : id = null,
        isUnknown = false;

  PortfolioRoutePath.details(this.id) : isUnknown = false;

  PortfolioRoutePath.unknown()
      : id = null,
        isUnknown = true;

  bool get isHomePage => id == null;

  bool get isSubPage => id != null;
}
