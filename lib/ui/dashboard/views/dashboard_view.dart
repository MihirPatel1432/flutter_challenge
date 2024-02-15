import 'package:flutter/material.dart';
import 'package:flutter_challenge/ui/common/strings.dart';
import 'package:flutter_challenge/ui/dashboard/views/widgets/playlist_item.dart';
import 'package:flutter_challenge/ui/dashboard/views/widgets/song_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 50.h),
            Text(StringConstants.titleWelcomeBack,
                style: context.textTheme.labelLarge?.copyWith(
                  fontSize: 24.sp,
                )).paddingSymmetric(horizontal: 16.w),
            SizedBox(height: 5.h),
            Text(StringConstants.subTitleWhatDoYouFeel,
                    style: context.textTheme.bodyMedium?.copyWith(
                        fontSize: 16.sp,
                        color: context.theme.colorScheme.secondaryContainer))
                .paddingSymmetric(horizontal: 16.w),
            SizedBox(height: 15.h),
            TextField(
              decoration: InputDecoration(
                  hintText: StringConstants.textSearchField,
                  hintStyle: context.textTheme.labelSmall?.copyWith(
                      fontSize: 14.sp,
                      color: context.theme.colorScheme.secondaryContainer),
                  prefixIcon: Icon(Icons.search,
                      color: context.theme.colorScheme.secondaryContainer),
                  filled: true,
                  border: outlineBorder,
                  enabledBorder: outlineBorder,
                  errorBorder: outlineBorder,
                  focusedErrorBorder: outlineBorder,
                  disabledBorder: outlineBorder,
                  fillColor: context.theme.colorScheme.onTertiaryContainer,
                  focusColor: context.theme.colorScheme.onTertiaryContainer,
                  hoverColor: context.theme.colorScheme.onTertiaryContainer),
            ).paddingSymmetric(horizontal: 16.w),
            SizedBox(height: 30.h),
            TabBar(
              controller: controller.tabController,
              tabs: const [
                Text(StringConstants.tabRecent),
                Text(StringConstants.tabTop50),
                Text(StringConstants.tabChill),
                Text(StringConstants.tabRAndB),
                Text(StringConstants.tabFestival),
              ],
              indicatorSize: TabBarIndicatorSize.label,
              indicator: const UnderlineTabIndicator(borderSide: BorderSide.none),
              isScrollable: true,
              labelStyle: context.textTheme.bodyMedium?.copyWith(fontSize: 16.sp),
              unselectedLabelStyle: context.textTheme.bodyMedium?.copyWith(
                fontSize: 16.sp,
              ),
              labelColor: context.theme.colorScheme.primaryContainer,
              unselectedLabelColor: context.theme.colorScheme.secondaryContainer,
            ),
            SizedBox(height: 40.h),
            SizedBox(
              height: 300.h,
              child: ListView.separated(
                  separatorBuilder: (_, __) => SizedBox(width: 10.w),
                  padding: EdgeInsets.only(left: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.playList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      PlayListItem(plModel: controller.playList[index])),
            ),
            SizedBox(height: 20.h),
            Text(StringConstants.textYourFavourites,
                style: context.textTheme.labelLarge?.copyWith(
                  fontSize: 16.sp,
                )).paddingSymmetric(horizontal: 16.w),
            Expanded(
              child: ListView.separated(
                  separatorBuilder: (_, __) => SizedBox(height: 10.h),
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                  itemCount: controller.songList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      SongItem(songModel: controller.songList[index])),
            )
          ],
        ),
      ),
    );
  }

  InputBorder get outlineBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(20.r),
      borderSide: BorderSide(
          color: Get.context!.theme.colorScheme.onTertiaryContainer,
          width: 2.w));
}
