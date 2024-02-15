import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../ui/dashboard/bindings/dashboard_binding.dart';
import '../ui/dashboard/views/dashboard_view.dart';
import '../ui/playlist/bindings/playlist_binding.dart';
import '../ui/playlist/views/playlist_view.dart';
import '../ui/song_screen/bindings/song_screen_binding.dart';
import '../ui/song_screen/views/song_screen_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const String INITIAL = Routes.DASHBOARD;
  static final routes = [
    GetPage(name: _Paths.ROOT, page: () => Container()),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.PLAYLIST,
      page: () => const PlaylistView(),
      binding: PlaylistBinding(),
    ),
    GetPage(
      name: _Paths.SONG_SCREEN,
      page: () => const SongScreenView(),
      binding: SongScreenBinding(),
    ),
  ];
}
