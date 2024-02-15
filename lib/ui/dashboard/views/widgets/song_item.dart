import 'package:flutter/material.dart';
import 'package:flutter_challenge/model/song_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SongItem extends StatelessWidget {
  const SongItem({super.key, required this.songModel});

  final SongModel songModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(10.r),
            child: Image.asset(songModel.image,
                height: 56.h, width: 56.w, fit: BoxFit.contain)),
        SizedBox(width: 15.w),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(songModel.title,
                style: context.textTheme.bodyMedium?.copyWith(
                  fontSize: 16.sp,
                )),
            SizedBox(height: 5.h),
            Text(songModel.subTitle,
                style: context.textTheme.titleSmall?.copyWith(
                    fontSize: 14.sp,
                    color: context.theme.colorScheme.secondaryContainer)),
          ],
        ),
        const Spacer(),
        Text(songModel.duration,
            style: context.textTheme.titleSmall?.copyWith(fontSize: 14.sp))
      ],
    );
  }
}
