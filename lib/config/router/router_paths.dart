class RouterPages {
  static const String path = '/';
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String registration = 'registration';
  static const String home = 'home';
}

class RouterPaths {
  static const String path = RouterPages.path;
  static const String welcome = path + RouterPages.welcome;
  static const String login = welcome + path + RouterPages.login;
  static const String registration = welcome + path + RouterPages.registration;
  static const String home = path + RouterPages.home;
}
