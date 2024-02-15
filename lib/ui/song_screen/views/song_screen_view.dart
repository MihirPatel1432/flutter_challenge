import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/common/asset_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/song_screen_controller.dart';

class SongScreenView extends GetView<SongScreenController> {
  const SongScreenView({Key? key}) : super(key: key);

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
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.bottomLeft,
                begin: Alignment.topRight,
                stops: [
              0,
              0.2,
              0.8,
              1.0
            ],
                colors: [
              Color(0xff892FE0),
              Color(0xFF0F0817),
              Color(0xFF0F0817),
              Color(0xff892FE0)
            ])),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.h, width: Get.width),
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.asset(PNGPath.playList2,
                  height: 333.h, width: 342.w, fit: BoxFit.contain),
            ),
            SizedBox(height: 39.h),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(controller.model?.title ?? '',
                        style: context.textTheme.labelLarge?.copyWith(
                          fontSize: 24.sp,
                        )),
                    SizedBox(height: 5.h),
                    Text(controller.model?.subTitle ?? '',
                        style: context.textTheme.bodyMedium?.copyWith(
                            fontSize: 16.sp,
                            color:
                                context.theme.colorScheme.secondaryContainer)),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.favorite_border_outlined, color: Colors.white)
              ],
            ),
            SizedBox(height: 20.h),
            Slider(
              allowedInteraction: SliderInteraction.tapOnly,
              value: 1.36,
              onChanged: (value) {},
              min: 0,
              max: 3.46,
              activeColor: Colors.white,
              inactiveColor: Colors.grey,
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text('1.24',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 14.sp,
                    )),
                Text(controller.model?.duration ?? '',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 14.sp,
                    ))
              ],
            ),
            SizedBox(height: 40.h),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.shuffle,color: Colors.white,size: 40.w),
                SizedBox(width: 50.w),
                Icon(Icons.skip_previous,color: Colors.white,size: 40.w),
                SizedBox(width: 20.w),
                Container(
                  width: 56.w,
                  height: 56.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: SweepGradient(
                          center: Alignment.center,
                          colors: [
                            Color(0xff842ED8),
                            Color(0xffDB28A9),
                            Color(0xff9D1DCA),
                          ])),
                  child: const Icon(Icons.pause,
                      color: Colors.white),
                ),
                SizedBox(width: 20.w),
                Icon(Icons.skip_next,color: Colors.white,size: 40.w),
                SizedBox(width: 50.w),
                Icon(Icons.repeat,color: Colors.white,size: 40.w),
              ],
            )
          ],
        ).paddingSymmetric(horizontal: 16.w),
      ),
    );
  }
}
