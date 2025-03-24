import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:root/components/root_images.dart';

import '../../root_colors.dart';

class RootDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const RootDetailAppBar({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            icon: Image.asset(
              RootImages.backIcon,
              width: 25.w,
              height: 25.h,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(
              color: RootColors.gray100,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(45.h);
}
