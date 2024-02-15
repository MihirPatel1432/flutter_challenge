part of 'app_pages.dart';

// ignore_for_file: constant_identifier_names
abstract class Routes {
  Routes._();

  static const ROOT = '/';
  static const INIT = ROOT;
  static const DASHBOARD =  _Paths.DASHBOARD;
  static const PLAYLIST = _Paths.PLAYLIST;
  static const SONG_SCREEN = _Paths.SONG_SCREEN;
}

abstract class _Paths {
  _Paths._();

  static const ROOT = '/';
  static const DASHBOARD = '/dashboard';
  static const PLAYLIST = '/playlist';
  static const SONG_SCREEN = '/song-screen';
}
