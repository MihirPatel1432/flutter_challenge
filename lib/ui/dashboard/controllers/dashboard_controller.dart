import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/playlist_model.dart';
import 'package:flutter_challenge/model/song_model.dart';
import 'package:flutter_challenge/ui/common/asset_images.dart';
import 'package:flutter_challenge/ui/common/strings.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController
    with GetTickerProviderStateMixin {
  TabController? tabController;

  List<PlayListModel> playList = [
    PlayListModel(
        title: StringConstants.plTodayHits,
        subTitle: StringConstants.subTextChillYourMind,
        image: PNGPath.playList2),
    PlayListModel(
        title: StringConstants.plRelaxingInstrumentals,
        subTitle: StringConstants.subTextMadeForYou,
        image: PNGPath.playList2),
    PlayListModel(
        title: StringConstants.plWorkoutEnergy,
        subTitle: StringConstants.subTextChillYourMind,
        image: PNGPath.playList2)
  ];

  List<SongModel> songList = [
    SongModel(
        title: 'Bye Bye',
        subTitle: 'Marshmello',
        image: PNGPath.songItem,
        duration: '4.16'),
    SongModel(
        title: 'Bye Bye',
        subTitle: 'Marshmello',
        image: PNGPath.songItem,
        duration: '4.16'),
    SongModel(
        title: 'Bye Bye',
        subTitle: 'Marshmello',
        image: PNGPath.songItem,
        duration: '4.16'),
    SongModel(
        title: 'Bye Bye',
        subTitle: 'Marshmello',
        image: PNGPath.songItem,
        duration: '4.16'),
    SongModel(
        title: 'Bye Bye',
        subTitle: 'Marshmello',
        image: PNGPath.songItem,
        duration: '4.16'),
    SongModel(
        title: 'Bye Bye',
        subTitle: 'Marshmello',
        image: PNGPath.songItem,
        duration: '4.16'),
  ];

  @override
  void onInit() {
    super.onInit();
    tabController = TabController(length: 5, vsync: this);
  }
}
