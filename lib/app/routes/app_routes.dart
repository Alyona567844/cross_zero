part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const ROOMS = _Paths.ROOMS;
}

abstract class _Paths {
  _Paths._();
  static const HOME = '/home';
  static const ROOMS = '/rooms';
}
