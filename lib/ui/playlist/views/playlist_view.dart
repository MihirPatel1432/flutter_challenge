import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/playlist_model.dart';
import 'package:flutter_challenge/model/song_model.dart';
import 'package:flutter_challenge/routes/app_pages.dart';
import 'package:flutter_challenge/ui/dashboard/views/widgets/song_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/playlist_controller.dart';

class PlaylistView extends GetView<PlaylistController> {
  const PlaylistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        actions: [
          const Icon(Icons.more_horiz, color: Colors.white),
          SizedBox(width: 16.w)
        ],
        leading: GestureDetector(
            onTap: Get.back,
            child:
                const Icon(Icons.arrow_back_ios_rounded, color: Colors.white)),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlayListTopView(model: controller.model),
          PlayListSongList(songList: controller.songList)
        ],
      ),
    );
  }
}

class PlayListTopView extends StatelessWidget {
  const PlayListTopView({super.key, required this.model});

  final PlayListModel? model;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 343.h,
      width: Get.width,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r),
            ),
            child: Image.asset(
              model?.image ?? '',
              height: 343.h,
              width: Get.width,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: 0,
              height: 100.h,
              child: const ColoredBox(color: Colors.black)),
          Positioned(
              bottom: 0,
              height: 100.h,
              child: const ColoredBox(color: Colors.black)),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(width: 15.w),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(model?.title ?? '',
                          style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 16.sp,
                          )),
                      SizedBox(height: 5.h),
                      Text(model?.subTitle ?? '',
                          style: context.textTheme.titleSmall?.copyWith(
                              fontSize: 14.sp,
                              color: context
                                  .theme.colorScheme.secondaryContainer)),
                    ],
                  ),
                  const Spacer(),
                  const Icon(Icons.favorite_border_outlined,
                      color: Colors.white),
                  SizedBox(width: 10.w),
                  Container(
                    width: 56.w,
                    height: 56.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient:
                            SweepGradient(center: Alignment.center, colors: [
                          Color(0xff842ED8),
                          Color(0xffDB28A9),
                          Color(0xff9D1DCA),
                        ])),
                    child: const Icon(Icons.play_arrow_rounded,
                        color: Colors.white),
                  )
                ],
              ).paddingSymmetric(horizontal: 16.w),
              SizedBox(height: 50.h),
            ],
          ),
        ],
      ),
    );
  }
}

class PlayListSongList extends StatelessWidget {
  const PlayListSongList({super.key, required this.songList});

  final List<SongModel> songList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.bottomRight,
                begin: Alignment.topLeft,
                stops: [
              0,
              0.4,
              0.7,
              1.0
            ],
                colors: [
              Color(0xff892FE0),
              Color(0xFF0F0817),
              Color(0xFF0F0817),
              Color(0xff892FE0)
            ])),
        child: ListView.separated(
            separatorBuilder: (_, __) => SizedBox(height: 15.h),
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: songList.length,
            itemBuilder: (_, index) => GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.SONG_SCREEN, arguments: songList[index]);
                },
                child: SongItem(songModel: songList[index]))),
      ),
    );
  }
}
