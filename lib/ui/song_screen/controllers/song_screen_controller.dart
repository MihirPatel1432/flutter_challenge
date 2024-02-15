import 'package:flutter_challenge/model/song_model.dart';
import 'package:get/get.dart';

class SongScreenController extends GetxController {
  SongModel? model;

  @override
  void onInit() {
    super.onInit();
    model = Get.arguments;
  }
}
