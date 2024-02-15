import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/playlist_model.dart';
import 'package:flutter_challenge/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlayListItem extends StatelessWidget {
  const PlayListItem({super.key, required this.plModel});

  final PlayListModel plModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.PLAYLIST, arguments: plModel);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.r),
            child: Image.asset(plModel.image,
                height: 202.h, width: 202.w, fit: BoxFit.contain),
          ),
          SizedBox(height: 15.h),
          Text(plModel.title,
              style: context.textTheme.bodyMedium?.copyWith(
                fontSize: 16.sp,
              )).paddingOnly(left: 10.w),
          SizedBox(height: 5.h),
          Text(plModel.subTitle,
                  style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 14.sp,
                      color: context.theme.colorScheme.secondaryContainer))
              .paddingOnly(left: 10.w),
        ],
      ),
    );
  }
}
