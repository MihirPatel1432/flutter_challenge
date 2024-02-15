import 'package:flutter_challenge/model/playlist_model.dart';
import 'package:flutter_challenge/model/song_model.dart';
import 'package:flutter_challenge/ui/common/asset_images.dart';
import 'package:get/get.dart';

class PlaylistController extends GetxController {
  PlayListModel? model;

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
    model = Get.arguments;
  }
}
